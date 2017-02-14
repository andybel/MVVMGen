require "erb"
require 'fileutils'

class MVVMGen

    def render templatepath

      content = File.read(File.expand_path(templatepath))
      t = ERB.new(content)
      t.result(binding)
  
    end

    def generateFromTemplate template

      filecomps = template.split(".")
      filename = "#{@name}#{filecomps[0]}.#{filecomps[2]}"

      generatedPage = self.render("Templates/#{template}")

      filegen = File.open(filename, "w+") do |fh|
        fh << generatedPage
      end
      FileUtils.move(filegen, @output_path)

      puts "WE GENERATED #{filename}: #{generatedPage}"

    end

    def createDir

        dirPath = "../Output/#{@name}"
        @output_path = File.expand_path(dirPath, __FILE__)
        unless File.directory?(@output_path)
          Dir.mkdir(@output_path)
        end
    
    end

    def initialize(modulename)

      @name = File.basename(modulename).split(".")[0]
      @xcodeModuleName = "Moya_MVVM"
      @companyName = "Snapp Mobile Germany GmbH"

      createDir()
      generateFromTemplate("ViewModel.template.swift.erb")
      generateFromTemplate("ViewController.template.swift.erb")
      generateFromTemplate("Storyboard.template.storyboard.erb")
      generateFromTemplate("Protocols.template.swift.erb")
      generateFromTemplate("Coordinator.template.swift.erb")

  end

end

# MVVMGen.new("Alcohol")
ARGV.each do |arg|
  MVVMGen.new(arg)
end