//
//  HomePresenter.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

protocol HomePresenting: AnyObject {
    var viewController: HomeDisplaying? { get set }
    func presentUser(user: User)
    func PresentError()
    func presentLike()
}

final class HomePresenter {
    private let router: HomeRouting
    weak var viewController: HomeDisplaying?
    
    init(router: HomeRouting) {
        self.router = router
    }
}

extension HomePresenter: HomePresenting {
    func presentUser(user: User) {
        viewController?.InitialFetch(user: user)
    }
    
    func PresentError() {
        
    }
    
    func presentLike() {
        router.perform(action: .like)
    }
    
}

