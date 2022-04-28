//
//  HomeInteractor.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

protocol HomeInteracting: AnyObject {
    func initialFetch()
    func like()
}

final class HomeInteractor {
    private let presenter: HomePresenting
    private let service: HomeServicing
    
    init(presenter: HomePresenting, service: HomeServicing) {
        self.presenter = presenter
        self.service = service
    }
}

extension HomeInteractor: HomeInteracting {
    func initialFetch() {
        service.fetch(completion: { result in
            switch result {
            case .success(let user):
                self.presenter.presentUser(user: user)
            case .failure:
                self.presenter.PresentError()
            }
        })
    }
    
    func like() {
        presenter.presentLike()
    }
}
