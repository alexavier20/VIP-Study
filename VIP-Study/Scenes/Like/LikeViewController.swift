//
//  LikeViewController.swift
//  VIP-Study
//
//  Created by Alex Xavier on 28/04/22.
//

import Foundation
import UIKit

final class LikeViewController: UIViewController {
    
    private lazy var thanksLabel: UILabel = {
       let label = UILabel()
        label.text = "Thanks for the like! 👍"
        label.font = label.font.withSize(32)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildLayout()
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    func ConfigureThanksLabelConstraints() {
        NSLayoutConstraint.activate([
            thanksLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            thanksLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

extension LikeViewController: ViewLayout {
    func configureView() {
        view.backgroundColor = .white
    }
    
    func configureHierarchy() {
        view.addSubview(thanksLabel)
    }
    
    func configureConstraints() {
        ConfigureThanksLabelConstraints()
    }
    
}
