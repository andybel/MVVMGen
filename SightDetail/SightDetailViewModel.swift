//
//  SightDetailViewModel.swift
//  Moya_MVVM
//
//  Created by Andy Bell on 02/13/2017.
//  Copyright © 2017 Snapp Mobile Germany GmbH. All rights reserved.
//

class SightDetailViewModel: SightDetailViewModelDelegate {
  
  var model: [SightDetailDataItem]? {
      didSet {
          viewDelegate?.modelDidChange(viewModel: self)
      }
  }
  weak var viewDelegate: SightDetailViewModelViewDelegate?
  weak var coordinatorDelegate: SightDetailViewModelCoordinatorDelegate?

  internal var title: String {
        return "SightDetail"
    }

}