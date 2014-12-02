//
//  DragCard.swift
//  SwiftAccelerationDrag
//
//  Created by 川村森 on 2014/12/02.
//  Copyright (c) 2014年 kawamura shin. All rights reserved.
//

import Foundation
import UIKit

class DragCard:UIImageView
{
    private var _isDrag:Bool = false;
    private var _vx:CGFloat = 1;
    private var _vy:CGFloat = 1;
    var vx:CGFloat{
        get{
            return _vx;
        }
        set(value)
        {
            _vx = value;
        }
    }
    var vy:CGFloat{
        get{
            return _vy;
        }
        set(value)
        {
            _vy = value;
        }
    }
    var isDrag:Bool{
        get{
            return _isDrag
        }
        set(value)
        {
            _isDrag = value
        }
        
    }
    func autoMove()
    {
        var point:CGPoint = CGPointMake(self.center.x + _vx , self.center.y + _vy);
        if(point.x > CGFloat(750))
        {
            vx *= -1;
            point.x = CGFloat(750);
        }
        else if(point.x < 0)
        {
            vx *= -1;
            point.x = 0;
        }
        
        if(point.y > CGFloat(1334))
        {
            
            vy *= -1;
            point.y = CGFloat(1334);
        }
        else if(point.y < 0)
        {
            vy *= -1;
            point.y = 0;
        }
        
        self.center = point;
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        //

    }

    override init() {
        super.init()
        println("init dragCard");
        var image:UIImage! = UIImage(named: "image.jpg");
        
        var frame:CGRect = CGRect(x: 0, y: 0, width: image.size.width, height: image.size.height)
        self.frame = frame
        self.image = image;
        
        

    }
    /**/
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    func start()
    {
        println("こっちですかね")

    }

    
}