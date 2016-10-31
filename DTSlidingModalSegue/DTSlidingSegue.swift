//
//  DTSlidingLeftSegue.swift
//  DTSlidingModalSegue
//
//  Created by Daron Tancharoen on 7/27/16.
//
//

import UIKit

public class DTSlidingLeftSegue: UIStoryboardSegue {

    override public func perform() {
        let preV = self.sourceViewController.view
        let newV = self.destinationViewController.view
        
        let window = UIApplication.sharedApplication().delegate!.window!!
        newV.center = CGPoint(x: preV.center.x + preV.frame.size.width, y: newV.center.y)
        window.insertSubview(newV, aboveSubview:preV)
        
        UIView.animateWithDuration(Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.CurveEaseOut
            ,animations:{
            newV.center = CGPoint(x: preV.center.x, y: newV.center.y);
            //preV.center = CGPointMake(0- preV.center.x, newV.center.y);
            },
             completion:{ finished in
            //[preV removeFromSuperview];
            self.sourceViewController.presentViewController(self.destinationViewController, animated:false, completion:nil)
            //window.rootViewController = self.destinationViewController;
            })

    }
}

public class DTSlidingLeftUnwindSegue: UIStoryboardSegue {
    
    override public func perform() {
        let preV = self.sourceViewController.view
        let newV = self.destinationViewController.view
        
        let window = UIApplication.sharedApplication().delegate!.window!!
        newV.center = preV.center
        window.insertSubview(newV, atIndex:0)
        
        UIView.animateWithDuration(Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.CurveEaseOut
            ,animations:{
                preV.center = CGPoint(x: preV.center.x + preV.frame.size.width, y: newV.center.y)
            },
             completion:{ finished in
                //[preV removeFromSuperview];
                self.destinationViewController.dismissViewControllerAnimated(false, completion:nil)
                //window.rootViewController = self.destinationViewController;
        })
        
    }
}

public class DTSlidingRightSegue: UIStoryboardSegue {
    
    override public func perform() {
        let preV = self.sourceViewController.view
        let newV = self.destinationViewController.view
        
        let window = UIApplication.sharedApplication().delegate!.window!!
        newV.center = CGPoint(x: preV.center.x - preV.frame.size.width, y: newV.center.y)
        window.insertSubview(newV, aboveSubview:preV)
        
        UIView.animateWithDuration(Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.CurveEaseOut
            ,animations:{
                newV.center = CGPoint(x: preV.center.x, y: newV.center.y);
                //preV.center = CGPointMake(0- preV.center.x, newV.center.y);
            },
             completion:{ finished in
                //[preV removeFromSuperview];
                self.sourceViewController.presentViewController(self.destinationViewController, animated:false, completion:nil)
                //window.rootViewController = self.destinationViewController;
        })
        
    }
}

public class DTSlidingRightUnwindSegue: UIStoryboardSegue {
    
    public var completion:(()->Void)?
    
    override public func perform() {
        let preV = self.sourceViewController.view
        let newV = self.destinationViewController.view
        
        let window = UIApplication.sharedApplication().delegate!.window!!
        newV.center = preV.center
        window.insertSubview(newV, atIndex:0)
        
        UIView.animateWithDuration(Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.CurveEaseOut
            ,animations:{
                preV.center = CGPoint(x: preV.center.x - preV.frame.size.width, y: newV.center.y)
            },
             completion:{ finished in
                //[preV removeFromSuperview];
                self.destinationViewController.dismissViewControllerAnimated(false, completion:nil)
                //window.rootViewController = self.destinationViewController;]
                self.completion?()
        })
    }
}
