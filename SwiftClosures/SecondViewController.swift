//
//  SecondViewController.swift
//  SwiftClosures
//
//  Created by 朱慧平 on 16/7/7.
//  Copyright © 2016年 Crystal. All rights reserved.
//

import UIKit
//typealias 是用来为已经存在的类型重新定义名字的，通过命名，可以使代码变得更加清晰。使用的语法也很简单，使用 typealias 关键字像使用普通的赋值语句一样，可以将某个已经存在的类型赋值为新的名字。
//声明一个闭包
  typealias  sendValueCloseure = (string:String) -> Void
class SecondViewController: UIViewController {
    var str:String?
    var testClosure:sendValueCloseure?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.whiteColor()
        var textLab = UILabel()
        textLab.frame = CGRectMake(80, 50, 120, 40)
        textLab.backgroundColor = UIColor.yellowColor()
        textLab.textAlignment = NSTextAlignment.Center
        textLab.text = str
        self.view.addSubview(textLab)
        
        var backButton = UIButton()
        backButton.frame = CGRectMake(80, 120, 120, 40)
        backButton.setTitle("back", forState: UIControlState.Normal)
        backButton.backgroundColor = UIColor.redColor()
        backButton.addTarget(self, action: #selector(SecondViewController.backBtnAction), forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(backButton)
        
    }
    func backBtnAction(){
        if (testClosure != nil) {
//            调用闭包方法为其传参
            testClosure!(string:"Closure")
        }
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
