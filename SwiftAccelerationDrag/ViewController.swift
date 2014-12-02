//
//  ViewController.swift
//  SwiftAccelerationDrag
//
//  Created by 川村森 on 2014/12/02.
//  Copyright (c) 2014年 kawamura shin. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    private var cardList:Array<DragCard> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var card:DragCard = DragCard();
        card.userInteractionEnabled = true;
        
        

        self.view.addSubview(card)
        
        var panGestureRecgniser:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: "panGestureSelector:")
        
        panGestureRecgniser.minimumNumberOfTouches = 1;
        card.addGestureRecognizer(panGestureRecgniser);
        
        var tapGestureRecogniser:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapGestureSelector:")
        tapGestureRecogniser.cancelsTouchesInView = false
        card.addGestureRecognizer(tapGestureRecogniser)
        
        
        
        cardList.append(card);
        
        var timer:NSTimer = NSTimer.scheduledTimerWithTimeInterval(1/60, target: self, selector: "onEnterFrame:", userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func onEnterFrame(sender:NSTimer)
    {
        var card:DragCard!;
        var i = 0;
        var n = 0;
        var point:CGPoint!;
        //
        n = cardList.count;
        for(i=0 ; i<n;i++)
        {
            card = cardList[i]
            if(card.isDrag)
            {
                
            }
            else
            {
                card.autoMove();
            }
        }
    }

    func panGestureSelector(sender:UIPanGestureRecognizer)
    {
        var card:DragCard! = sender.view as DragCard;
        
        if(sender.state == .Ended)
        {
           // println(".End")
            card.isDrag = false;
        }
        else if(sender.state == .Began)
        {
            //println(".Began")
            card.isDrag = true;
        }
        else
        {
            //println("そのた")
            var point:CGPoint = sender.translationInView(self.view);
            var movePoint:CGPoint = CGPointMake(card.center.x + point.x , card.center.y + point.y);
            card.center = movePoint;
            sender.setTranslation(CGPointZero, inView: card)
        }
    }
    func tapGestureSelector(sender:UIPanGestureRecognizer)
    {
        println("tap");
        var card:DragCard = sender.view as DragCard
        if(sender.state == .Began)
        {
            println("はじめ")
        }
        card.isDrag = true;
    }
}

