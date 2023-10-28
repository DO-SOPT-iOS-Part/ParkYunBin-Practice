//
//  SceneDelegate.swift
//  ParkYunBin-practice
//
//  Created by 박윤빈 on 2023/10/07.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        window?.overrideUserInterfaceStyle = .light
        let navigationController = UINavigationController(rootViewController: ImageViewController())
        navigationController.isNavigationBarHidden = true
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
}

