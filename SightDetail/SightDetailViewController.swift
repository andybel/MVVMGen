//
//  SightDetailViewController.swift
//  Moya_MVVM
//
//  Created by Andy Bell on 02/13/2017.
//  Copyright © 2017 Snapp Mobile Germany GmbH. All rights reserved.
//

import UIKit

class SightDetailViewController: UIViewController {
    
    // IBOUtlets here

    var viewModel: SightDetailViewModel? {
        willSet {
            viewModel?.viewDelegate = nil
        }
        didSet {
            viewModel?.viewDelegate = self
            refreshDisplay()
        }
    }
    
    fileprivate var isLoaded: Bool = false

    override func viewDidLoad()
    {
        super.viewDidLoad()
        isLoaded = true;
        refreshDisplay()
    }

    fileprivate func refreshDisplay()
    {
        guard isLoaded else { return }
        if let viewModel = viewModel {
            // set UI from vieModel here
        } else {
            // or set default UI
        }
    }
    
}

extension SightDetailViewController: SightDetailViewModelViewDelegate
{
    func modelDidChange(viewModel: SightDetailViewModel)
    {
        refreshDisplay()
    }
}