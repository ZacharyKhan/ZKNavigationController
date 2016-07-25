//
//  ZKIcon.swift
//  ZKNavigationPopup
//
//  Created by Zachary Khan on 7/25/16.
//  Copyright © 2016 ZacharyKhan. All rights reserved.
//

import UIKit

public class ZKIcon: UIImageView {

    override public init(image: UIImage?) {
        super.init(image: image)
        
        self.frame = CGRect(x: 0, y: 0, width: 45, height: 45)
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.width / 2
        
        self.layer.borderColor = UIColor.whiteColor().CGColor
        self.layer.borderWidth = 2
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
