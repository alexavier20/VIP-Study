//
//  HomeFactory.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

enum HomeFactory {
    static func make() -> HomeViewController {
        let router: HomeRouting = HomeRouter()
        let presenter: HomePresenting = HomePresenter(router: router)
        let service: HomeServicing = HomeService()
        let interactor: HomeInteracting = HomeInteractor(presenter: presenter, service: service)
        let viewController = HomeViewController(interactor: interactor)
        
        presenter.viewController = viewController
        router.viewController = viewController
        
        return viewController
    }
}
