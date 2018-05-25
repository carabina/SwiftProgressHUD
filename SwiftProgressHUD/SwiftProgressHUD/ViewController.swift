//
//  ViewController.swift
//  SwiftProgressHUD
//
//  Created by xuanhe on 2018/5/24.
//  Copyright © 2018年 zxkkit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showWithImages(_ sender: UIButton) {
        
        var images = Array<UIImage>()
        
        for i in 1...6 {
            images.append(UIImage(named: "number_\(i)")!)
        }
        self.showWithImages(images, timeInterval: 200)
    }
    
    @IBAction func showSuccess(_ sender: UIButton) {
        self.showSuccess(statusText!)
    }
    
    @IBAction func showError(_ sender: UIButton) {
        self.showError(statusText!)
    }
    
    
    @IBAction func showInfo(_ sender: UIButton) {
        self.showInfo(statusText!)
    }
    
    
    @IBAction func show(_ sender: UIButton) {
        self.show()
    }
    
    
    
    @IBAction func showOnlyText(_ sender: UIButton) {
        self.showOnlyText(statusText!)
    }
    
    
    @IBAction func showTopProgress(_ sender: UIButton) {
        self.showTopProgress(statusText!)
    }
    
    @IBAction func showProgress(_ sender: UIButton) {
        self.show(statusText!, type: .error, autoClear: true)
    }
    
    
    @IBAction func clearAllProgress(_ sender: UIButton) {
        self.clearAllProgressHUD()
        
    }
    
//    var content: String? {
//        //didSet 作用更大 能够获取新值和旧值
//        //在视图绑定模型数据的时候会使用didSet
//        //属性设置检查器
//        didSet {
//            if (self.textField.text?.count)! < 1 {
//                content = "hello SwiftProgressHUD"
//            }
//        }
//        willSet {
//
//        }
//    }
    
    var statusText: String? {
        get {
            if (self.textField.text?.count)! < 1 {
                return "Hello SwiftProgressHUD!";
            }
            return self.textField.text
        }
        set {
            self.statusText = newValue
        }
    }
    
}

