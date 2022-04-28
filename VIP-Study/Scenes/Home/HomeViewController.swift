//
//  HomeViewController.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation
import UIKit

protocol HomeDisplaying: AnyObject {
    
}

final class HomeViewController: UIViewController {
    private let interactor: HomeInteracting
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildLayout()
    }
    
    init(interactor: HomeInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
}

extension HomeViewController: HomeDisplaying {
    
}

extension HomeViewController: ViewLayout {
    func configureView() {
        view.backgroundColor = .red
    }
    
    func configureHierarchy() {
        
    }
    
    func configureConstraints() {
        
    }
    
    
}
