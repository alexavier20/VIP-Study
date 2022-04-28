//
//  HomeViewController.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation
import UIKit

protocol HomeDisplaying: AnyObject {
    func InitialFetch(user: User)
}

final class HomeViewController: UIViewController {
    private let interactor: HomeInteracting
    
    private lazy var loginTitleLabel: UILabel = {
       let label = UILabel()
        label.text = "Login"
        label.font = label.font.withSize(18)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loginLabel: UILabel = {
       let label = UILabel()
        label.font = label.font.withSize(18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameTitleLabel: UILabel = {
       let label = UILabel()
        label.text = "Name"
        label.font = label.font.withSize(18)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.font = label.font.withSize(18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var bioTitleLabel: UILabel = {
       let label = UILabel()
        label.text = "Bio"
        label.font = label.font.withSize(18)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var bioLabel: UILabel = {
       let label = UILabel()
        label.font = label.font.withSize(18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var likeButton: UIButton = {
       let btn = UIButton()
        btn.setTitle("Like 🤍", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .red
        btn.addTarget(self, action: #selector(btnPressed), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildLayout()
        
        interactor.initialFetch()
    }
    
    init(interactor: HomeInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    @objc func btnPressed() {
        interactor.like()        
    }
    
    func ConfigureLoginTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            loginTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            loginTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginTitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    func ConfigureLoginLabelConstraints() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: loginTitleLabel.bottomAnchor, constant: 16),
            loginLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    func ConfigureNameTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            nameTitleLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 24),
            nameTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            nameTitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    func ConfigureNameLabelConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: nameTitleLabel.bottomAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    func ConfigureBioTitleLabelConstraints() {
        NSLayoutConstraint.activate([
            bioTitleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 24),
            bioTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            bioTitleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    func ConfigureBioLabelConstraints() {
        NSLayoutConstraint.activate([
            bioLabel.topAnchor.constraint(equalTo: bioTitleLabel.bottomAnchor, constant: 16),
            bioLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            bioLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    func ConfigureLikeButtonConstraints() {
        NSLayoutConstraint.activate([
            likeButton.topAnchor.constraint(equalTo: bioLabel.bottomAnchor, constant: 32),
            likeButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            likeButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
}

extension HomeViewController: HomeDisplaying {
    func InitialFetch(user: User) {
        loginLabel.text = user.login
        nameLabel.text = user.name
        bioLabel.text = user.bio
    }
}

extension HomeViewController: ViewLayout {
    func configureView() {
        view.backgroundColor = .white
    }
    
    func configureHierarchy() {
        view.addSubview(loginTitleLabel)
        view.addSubview(loginLabel)
        view.addSubview(nameTitleLabel)
        view.addSubview(nameLabel)
        view.addSubview(bioTitleLabel)
        view.addSubview(bioLabel)
        view.addSubview(likeButton)
    }
    
    func configureConstraints() {
        ConfigureLoginTitleLabelConstraints()
        ConfigureLoginLabelConstraints()
        ConfigureNameTitleLabelConstraints()
        ConfigureNameLabelConstraints()
        ConfigureBioTitleLabelConstraints()
        ConfigureBioLabelConstraints()
        ConfigureLikeButtonConstraints()
    }
    
}
