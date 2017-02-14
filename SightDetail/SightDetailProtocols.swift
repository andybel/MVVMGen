//
//  SightDetailProtocols.swift
//  Moya_MVVM
//
//  Created by Andy Bell on 02/13/2017.
//  Copyright © 2017 Snapp Mobile Germany GmbH. All rights reserved.
//

import Foundation

protocol SightDetailViewModelViewDelegate: class
{
    func modelDidChange(viewModel: SightDetailViewModelDelegate)
}

protocol SightDetailViewModelCoordinatorDelegate: class {
    func SightDetailDidSelectData(data: Any?)
}

protocol SightDetailViewModelDelegate {
    
    var model: [SightDetailDataItem]? { get set }
    var viewDelegate: SightDetailViewModelViewDelegate? { get set }
    var coordinatorDelegate: SightDetailViewModelCoordinatorDelegate? { get set}
    var title: String { get }
    
    // func declarations here...
    
}
