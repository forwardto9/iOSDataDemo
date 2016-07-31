//
//  ViewController.swift
//  DataTypeDemo
//
//  Created by uwei on 7/29/16.
//  Copyright © 2016 Tencent. All rights reserved.
//

import UIKit


class MyDrawView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.whiteColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func drawRect(rect: CGRect) {
        let attributeString1 = NSAttributedString(string: "we all have a grate dream. then we should take much time to achieve it")
//        attributeString1.drawInRect(rect)
        attributeString1.drawWithRect(rect, options: NSStringDrawingOptions.UsesLineFragmentOrigin, context: nil)
    }
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let lable = UILabel(frame: CGRectMake(50, 50, 200, 20))
        lable.backgroundColor = UIColor.grayColor()
        view.addSubview(lable)
        
        
        
        let attributeString1 = NSAttributedString(string: "we all have a grate dream. then we should take much time to achieve it")
        lable.attributedText = attributeString1;
        
        
        
        let drawView = MyDrawView(frame: CGRectMake(50, 150, 200, 150))
        
        self.view.addSubview(drawView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
}

