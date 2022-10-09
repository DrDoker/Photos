//
//  SceneDelegate.swift
//  Photos
//
//  Created by Serhii  on 09/10/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowsScene)
        let tabBar = TabBarController()
        tabBar.selectedIndex = 2
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
}

