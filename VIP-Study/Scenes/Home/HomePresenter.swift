//
//  HomePresenter.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

protocol HomePresenting: AnyObject {
    var viewController: HomeDisplaying? { get set }
}

final class HomePresenter {
    private let router: HomeRouting
    weak var viewController: HomeDisplaying?
    
    init(router: HomeRouting) {
        self.router = router
    }
}

extension HomePresenter: HomePresenting {
    
}

