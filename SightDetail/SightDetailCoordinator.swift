//
//  SightDetailCoordinator.swift
//  Moya_MVVM
//
//  Created by Andy Bell on 02/13/2017.
//  Copyright © 2017 Snapp Mobile Germany GmbH. All rights reserved.
//

import UIKit

class SightDetailCoordinator: Coordinator {
    
    var SightDetailViewController:SightDetailViewController?
    var window: UIWindow
    
    init(window: UIWindow)
    {
        self.window = window
    }
    
    func start()
    {
        
        let storyboard = UIStoryboard(name: "SightDetailStoryboard", bundle: nil)
        SightDetailViewController = storyboard.instantiateViewController(withIdentifier: "SightDetailViewController") as? SightDetailViewController
        
        guard let SightDetailViewController = SightDetailViewController else { return }
        
        let viewModel =  SightDetailViewModel()
        viewModel.coordinatorDelegate = self
        SightDetailViewController.viewModel = viewModel
        
        // appropriate navigation here...
        window.rootViewController = SightDetailViewController
    
    }
    
}

extension SightDetailCoordinator: SightDetailViewModelCoordinatorDelegate {
    
    func viewModelDidSelectData(item: Any?) {
        // handle onward process here
    }
    
}