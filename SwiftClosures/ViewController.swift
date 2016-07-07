//
//  ViewController.swift
//  SwiftClosures
//
//  Created by 朱慧平 on 16/7/7.
//  Copyright © 2016年 Crystal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let gotoNextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        gotoNextButton.frame = self.view.bounds
        // Do any additional setup after loading the view, typically from a nib.
        gotoNextButton.backgroundColor = UIColor.redColor()
        gotoNextButton.setTitle("gotoNext", forState: UIControlState.Normal)
        gotoNextButton.addTarget(self, action: #selector(ViewController.gotoNextButtonClick(_:)), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(gotoNextButton)
    }
    func gotoNextButtonClick(sender:UIButton) {
        let secondVC = SecondViewController()
        secondVC.testClosure = myCloseure //将闭包传递到二级界面，在二级界面中调用
        secondVC.str = "send Value"
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
//    闭包方法的回调
    func myCloseure(testStr:String) ->Void{
        gotoNextButton.setTitle(testStr, forState: UIControlState.Normal)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

