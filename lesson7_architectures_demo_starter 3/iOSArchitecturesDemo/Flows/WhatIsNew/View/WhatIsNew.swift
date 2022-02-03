//
//  WhatIsNew.swift
//  iOSArchitecturesDemo
//
//  Created by Elizaveta Sidorenkova on 03.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

final class WhatIsNewView: UIView {
    
    // MARK: - Subviews
//    private(set) lazy var ratingLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textColor = .lightGray
//        label.font = UIFont.boldSystemFont(ofSize: 20.0)
//        return label
//    }()
    
    private(set) lazy var whatIsNewLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20.0)
        return label
    }()
    
    // MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupLayout()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupLayout()
    }

    // MARK: - UI
    private func setupLayout() {
        self.addSubview(self.whatIsNewLabel)

        NSLayoutConstraint.activate([

            self.whatIsNewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 120.0),
            self.whatIsNewLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16.0),
            self.whatIsNewLabel.widthAnchor.constraint(equalToConstant: 120.0)


        ])
    }
}
