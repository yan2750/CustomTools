//
//  ViewController.swift
//  CustomTools
//
//  Created by YanMingyue on 15/11/12.
//  Copyright © 2015年 YanMingyue. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       self.title = "VC"
        self.view.backgroundColor = UIColor.redColor()
        
        
        
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
    }

    
}

