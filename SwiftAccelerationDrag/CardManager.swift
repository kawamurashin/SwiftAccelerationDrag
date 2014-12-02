//
//  CardManager.swift
//  SwiftAccelerationDrag
//
//  Created by 川村森 on 2014/12/02.
//  Copyright (c) 2014年 kawamura shin. All rights reserved.
//

import Foundation
import UIkit

class CardManager:UIViewController,UIGestureRecognizerDelegate
{
    //private var cardList = [];
    /*uiviewの継承のためにシングルトンにできないのかなぁ。

    class var sharedInstance : CardManager {
        struct Static {
            static let instance : CardManager = CardManager()
        }
        return Static.instance
    }
    */
    
    /*
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        //
    }
    override init()
    {
        println("stat")
        super.init()
        

        var image:UIImage! = UIImage(named: "image.jpg");
        var imageView:UIImageView = UIImageView(frame:CGRectMake(0, 0, image.size.width, image.size.height));
        imageView.image = image;
        imageView.userInteractionEnabled = true;
        self.addSubview(imageView);
        
        var panGestureRecgniser:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: "panGestureSelector:")
        panGestureRecgniser.minimumNumberOfTouches = 1;
        imageView.addGestureRecognizer(panGestureRecgniser);
        
    }
    func panGestureSelector(sender:UIPanGestureRecognizer)
    {
        println("drag san")

        
    }

    
    
     func start() {
        var image:UIImage! = UIImage(named: "image.jpg");
        var imageView:UIImageView = UIImageView(frame:CGRectMake(0, 0, image.size.width, image.size.height));
        imageView.image = image;
        imageView.userInteractionEnabled = true;
        self.view.addSubview(imageView);
        
        
        let panGestureRecgniser:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: "panGestureSelector:")
        panGestureRecgniser.minimumNumberOfTouches = 1
        panGestureRecgniser.delegate = self
        
        imageView.addGestureRecognizer(panGestureRecgniser);

        
    }
*/
    func panGestureSelector(sender:UIPanGestureRecognizer)
    {
        println("drag san")
    }

    
}