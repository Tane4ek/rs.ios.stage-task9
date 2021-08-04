//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Uladzislau Volchyk
// On: 23.07.21
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        window = UIWindow(windowScene: windowScene)
        
        let itemVC = ItemVC()
        itemVC.tabBarItem = UITabBarItem(title: "Items", image: UIImage(systemName: "square.grid.2x2"), tag: 0)

        let settings = Settings()
        let navController2 = UINavigationController(rootViewController: settings)
        navController2.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [itemVC, navController2]
        
        UITabBar.appearance().tintColor = UIColor.red
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}

extension SceneDelegate {
   static var shared: SceneDelegate {
      return UIApplication.shared.delegate as! SceneDelegate
   }
var rootViewController: ItemVC {
      return window!.rootViewController as! ItemVC
   }
}
