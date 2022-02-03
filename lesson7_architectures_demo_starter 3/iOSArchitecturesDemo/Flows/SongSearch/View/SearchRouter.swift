//
//  SearchRouter.swift
//  iOSArchitecturesDemo
//
//  Created by Elizaveta Sidorenkova on 03.02.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import Foundation
import UIKit

protocol SearchRouter {
    func openDetails(for app: ITunesApp)
    func openAppInItunes(app: ITunesApp)
}

final class SearchRouter: SearchRouter {
    weak var viewController: UIViewController?

    func openDetails(for app: ITunesApp) {
        let appDetailViewController = AppDetailViewController(app: app)
        self.viewController?.navigationController?.pushViewController(appDetailViewController, animated: true)
    }

    func openAppInItunes(app: ITunesApp) {
        guard let urlString = app.appUrl,
              let url = URL(string: urlString) else {
                  return
              }

        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
