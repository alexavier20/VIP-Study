//
//  HomeInteractor.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

protocol HomeInteracting: AnyObject {
    
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
    
}
