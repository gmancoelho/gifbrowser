//
//  FlowController.swift
//  GifBrowser
//
//  Created by Guilherme Maciel de Aguiar Nunes Coelho on 08/03/20.
//  Copyright © 2020 gmanc. All rights reserved.
//

import UIKit

final class ApplicationFlowController {
    internal var navigationController: UINavigationController?
    internal var window: UIWindow?

    init(window: UIWindow?) {
        self.window = window
    }

    func start() {
        navigationController = UINavigationController(rootViewController: UIViewController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
