//
//  ZKNavigationPopupView.swift
//  ZKNavigationPopup
//
//  Created by Zachary Khan on 7/25/16.
//  Copyright © 2016 ZacharyKhan. All rights reserved.
//

import Foundation
import UIKit

class ZKNavigationPopupView : UIView {

    init(navigationController:UINavigationController, Icon: ZKIcon?, Message: String!) {
        super.init(frame: CGRect(x: 0, y: navigationController.navigationBar.frame.height-55, width: navigationController.navigationBar.frame.width, height: 55))
        self.backgroundColor = UIColor.darkGrayColor().colorWithAlphaComponent(0.65)

        self.alpha = 0
        
        var label = UILabel()
        
        if Icon != nil {
            Icon!.frame = CGRect(x: 3, y: 5, width: 45, height: 45)
            Icon!.clipsToBounds = true
            self.addSubview(Icon!)
            label = UILabel(frame: CGRect(x: 65, y: 0, width: self.frame.width - 65, height: self.frame.height))
        } else {
            label = UILabel(frame: CGRect(x: 10, y: 0, width: self.frame.width - 10, height: self.frame.height))
        }
        
        label.clipsToBounds = true
        label.text = Message
        label.textColor = UIColor.whiteColor()
        self.addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}