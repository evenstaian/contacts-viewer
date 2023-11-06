//
//  AppDelegate.swift
//  ProjectNew
//
//  Created by Evens Taian on 31/10/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let rootScene = ContactsFactory.makeModule()
        let navigation = UINavigationController(rootViewController: rootScene)
        
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        
        window!.rootViewController = navigation
        window?.makeKeyAndVisible()
        
        return true
    }


}

