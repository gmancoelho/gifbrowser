//
//  AppDelegate.swift
//  GifBrowser
//
//  Created by Guilherme Maciel de Aguiar Nunes Coelho on 08/03/20.
//  Copyright © 2020 gmanc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    internal var window: UIWindow?
    private var applicationFlowController: ApplicationFlowController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        applicationFlowController = ApplicationFlowController(window: window)
        applicationFlowController?.start()

        return true
    }
}
