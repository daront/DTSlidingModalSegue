//
//  DTSlidingLeftSegue.swift
//  DTSlidingModalSegue
//
//  Created by Daron Tancharoen on 7/27/16.
//
//

import UIKit

open class DTSlidingLeftSegue: UIStoryboardSegue {

    override open func perform() {
        let preV = self.source.view
        let newV = self.destination.view
        
        let window = UIApplication.shared.delegate!.window!!
        newV?.center = CGPoint(x: (preV?.center.x)! + (preV?.frame.size.width)!, y: (newV?.center.y)!)
        window.insertSubview(newV!, aboveSubview:preV!)
        
        UIView.animate(withDuration: Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.curveEaseOut
            ,animations:{
            newV?.center = CGPoint(x: (preV?.center.x)!, y: (newV?.center.y)!);
            //preV.center = CGPointMake(0- preV.center.x, newV.center.y);
            },
             completion:{ finished in
            //[preV removeFromSuperview];
            self.source.present(self.destination, animated:false, completion:nil)
            //window.rootViewController = self.destinationViewController;
            })

    }
}

open class DTSlidingLeftUnwindSegue: UIStoryboardSegue {
    
    override open func perform() {
        let preV = self.source.view
        let newV = self.destination.view
        
        let window = UIApplication.shared.delegate!.window!!
        newV?.center = (preV?.center)!
        window.insertSubview(newV!, at:0)
        
        UIView.animate(withDuration: Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.curveEaseOut
            ,animations:{
                preV?.center = CGPoint(x: (preV?.center.x)! + (preV?.frame.size.width)!, y: (newV?.center.y)!)
            },
             completion:{ finished in
                //[preV removeFromSuperview];
                self.destination.dismiss(animated: false, completion:nil)
                //window.rootViewController = self.destinationViewController;
        })
        
    }
}

open class DTSlidingRightSegue: UIStoryboardSegue {
    
    override open func perform() {
        let preV = self.source.view!
        let newV = self.destination.view!
        
        let window = UIApplication.shared.delegate!.window!!
        newV.center = CGPoint(x: preV.center.x - preV.frame.size.width, y: newV.center.y)
        window.insertSubview(newV, aboveSubview:preV)
        
        UIView.animate(withDuration: Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.curveEaseOut
            ,animations:{
                newV.center = CGPoint(x: preV.center.x, y: newV.center.y);
                //preV.center = CGPointMake(0- preV.center.x, newV.center.y);
            },
             completion:{ finished in
                //[preV removeFromSuperview];
                self.source.present(self.destination, animated:false, completion:nil)
                //window.rootViewController = self.destinationViewController;
        })
        
    }
}

open class DTSlidingRightUnwindSegue: UIStoryboardSegue {
    
    open var completion:(()->Void)?
    
    override open func perform() {
        let preV = self.source.view!
        let newV = self.destination.view!
        
        let window = UIApplication.shared.delegate!.window!!
        newV.center = preV.center
        window.insertSubview(newV, at:0)
        
        UIView.animate(withDuration: Double(UINavigationControllerHideShowBarDuration)
            ,delay:0.0
            ,options:.curveEaseOut
            ,animations:{
                preV.center = CGPoint(x: preV.center.x - preV.frame.size.width, y: newV.center.y)
            },
             completion:{ finished in
                //[preV removeFromSuperview];
                self.destination.dismiss(animated: false, completion:nil)
                //window.rootViewController = self.destinationViewController;]
                self.completion?()
        })
    }
}
