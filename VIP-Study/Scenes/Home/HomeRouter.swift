//
//  HomeRouter.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation
import UIKit

protocol HomeRouting: AnyObject {
    var viewController: UIViewController? { get set }
}

final class HomeRouter {
    weak var viewController: UIViewController?
}

extension HomeRouter: HomeRouting {
    
}
