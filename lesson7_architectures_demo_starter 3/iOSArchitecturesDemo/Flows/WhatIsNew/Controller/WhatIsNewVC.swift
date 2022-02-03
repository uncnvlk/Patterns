//
//  WhatIsNewVC.swift
//  iOSArchitecturesDemo
//
//  Created by Elizaveta Sidorenkova on 03.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//



import Foundation
import UIKit

final class WhatsNewVC: UIViewController {

    // MARK: - Properties
    private let app: ITunesApp

    private var whatIsNewView: WhatIsNewView {
        return self.view as! WhatIsNewView
    }

    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = WhatsNewView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
    }

    // MARK: - Private
    
    private func fillData() {
        self.whatIsNewView.whatIsNewLabel.text = "What is new?"
    }
}
