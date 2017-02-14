# MVVMGen
Basic script for generating swift &amp; storyboard files for MVVM Modules.

Usage:

- Navigate to MVVMGen in terminal
- Run the program b ypassing in the name of your MMVVM module(s)

e.g.

$ ruby MVVMGen.rb "Hello"

$ ruby MVVMGen.rb "LocationsList" "LocationDetail" "LocationMap"


This will generate a new directory for your module containing the following files:

- Output/Hello/HelloViewModel.swift
- Output/Hello/HelloViewController.swift 
- Output/Hello/HelloProtocols.swift 
- Output/Hello/HelloCoordinator.swift
- Output/Hello/HelloStoryboard.storyboard 
