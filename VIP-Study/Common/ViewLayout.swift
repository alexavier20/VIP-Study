//
//  ViewLayout.swift
//  VIP-Study
//
//  Created by Alex Xavier on 27/04/22.
//

import Foundation

protocol ViewLayout: AnyObject {
    func configureView()
    func configureHierarchy()
    func configureConstraints()
}

extension ViewLayout {
    func buildLayout() {
        configureView()
        configureHierarchy()
        configureConstraints()
    }
}
