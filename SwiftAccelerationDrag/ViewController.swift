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
        //
        n = cardList.count;
        for(i=0 ; i<n;i++)
        {
            card = cardList[i];
            
        }
    }

    func panGestureSelector(sender:UIPanGestureRecognizer)
    {
        if(sender.state == .Ended)
        {
            println(".End")
        }
        else if(sender.state == .Began)
        {
            println(".Began")
        }
        else
        {
            println("そのた")
        }
        var card:DragCard! = sender.view as DragCard;
        var point:CGPoint = sender.translationInView(self.view);
        var movePoint:CGPoint = CGPointMake(card.center.x + point.x , card.center.y + point.y);
        card.center = movePoint;
        
        sender.setTranslation(CGPointZero, inView: card)
    }
}

