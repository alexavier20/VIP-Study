//
//  HomeRouter.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation
import UIKit

enum HomeAction {
    case like
}

protocol HomeRouting: AnyObject {
    var viewController: UIViewController? { get set }
    func perform(action: HomeAction)
}

final class HomeRouter {
    weak var viewController: UIViewController?
}

extension HomeRouter: HomeRouting {
    func perform(action: HomeAction) {
        switch action {
        case .like:
            let likeViewController = LikeViewController()
            viewController?.navigationController?.pushViewController(likeViewController, animated: true)
        default:
            break
        }
    }  
}
