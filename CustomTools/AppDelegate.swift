//
//  AppDelegate.swift
//  CustomTools
//
//  Created by YanMingyue on 15/11/12.
//  Copyright © 2015年 YanMingyue. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        
       let signInVC = SignInViewController()
       let nav_1 = UINavigationController(rootViewController: signInVC)
       let signInItem : UITabBarItem = UITabBarItem(title: "签到", image: UIImage(named: "loginIn"), selectedImage: UIImage(named: "loginIn"))
        nav_1.tabBarItem = signInItem
        
        
        let graphVC = GrapAnalysisViewController()
        let nav_2 = UINavigationController(rootViewController: graphVC)
        let graphItem : UITabBarItem = UITabBarItem(title: "图表", image: UIImage(named: "loginIn"), selectedImage: UIImage(named: "loginIn"))
        nav_2.tabBarItem = graphItem
        
        let tarBar = UITabBarController()
        tarBar.viewControllers = [nav_1,nav_2]
        tarBar.selectedIndex = 0
        self.window?.rootViewController = tarBar
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

