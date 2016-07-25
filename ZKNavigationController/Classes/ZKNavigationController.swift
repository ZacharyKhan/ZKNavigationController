//
//  ZKNavigationController.swift
//  ZKNavigationPopup
//
//  Created by Zachary Khan on 7/25/16.
//  Copyright © 2016 ZacharyKhan. All rights reserved.
//

import UIKit
import CoreGraphics
import Foundation

public class ZKNavigationController: UINavigationController {
    
    var shown : Bool! = false
    
    public func showAlert(PopupView: ZKNavigationPopupView?) {
        if !self.shown {
            print("NOTHIN SHOWN, GO AHEAD!")
            let view = PopupView!
            self.shown = true
            
            let coverBarView = UIView(frame: CGRect(x: 0, y: -20, width: self.navigationBar.frame.width, height: 9))
            coverBarView.backgroundColor = view.backgroundColor!
            coverBarView.alpha = 0
            self.navigationBar.addSubview(coverBarView)
            dispatch_async(dispatch_get_main_queue(), { 
                
                UIView.animateWithDuration(1.2, animations: { 
                    self.navigationBar.addSubview(view)
                    coverBarView.alpha = 1.0
                    view.alpha = 1.0
                    }, completion: { (val) in
                        UIView.animateWithDuration(0.65, delay: 0.3, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.65, options: .CurveEaseInOut, animations: {
                            coverBarView.frame = CGRect(x: 0, y: -20, width: self.navigationBar.frame.width, height: 20)
                            view.frame.origin.y += 55
                            }, completion: { (val) in
                                
                                UIView.animateWithDuration(0.85, delay: 1, options: .CurveEaseIn, animations: { 
                                    view.alpha = 0
                                    coverBarView.alpha = 0
                                    }, completion: { (value) in
                                        view.removeFromSuperview()
                                        coverBarView.removeFromSuperview()
                                        self.shown = false
                                })
                        })
                })
            })
            
            
        } else {
            print("UH OH! THERE'S ALREADY A NOTIFICATION SHOWN!")
        }
    
    }
    
}