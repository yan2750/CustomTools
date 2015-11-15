//
//  SignInViewController.swift
//  CustomTools
//
//  Created by YanMingyue on 15/11/12.
//  Copyright © 2015年 YanMingyue. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
       super.viewDidLoad()
       self.navigationController?.navigationBar.addSubview(self.creatRightNavBarBtn())
        self.view.addSubview(self.creatRightNavBarBtn())
        
    }

    
    func creatRightNavBarBtn() -> UIButton {
        let rightBarBtn = UIButton(frame: CGRectMake(300, 0, 100, 40))
        rightBarBtn.setTitle("添加习惯", forState: UIControlState.Normal)
        rightBarBtn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        rightBarBtn.tintColor = UIColor.blackColor()
        rightBarBtn.addTarget(self, action: "addHabit", forControlEvents: UIControlEvents.TouchUpInside)
        return rightBarBtn
        
    }
    
    func addHabit(sender: UIButton) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}
