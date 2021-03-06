//
//  ViewController.swift
//  ZKNavigationController
//
//  Created by Zach on 07/25/2016.
//  Copyright (c) 2016 Zach. All rights reserved.
//

import UIKit
import Foundation
import ZKNavigationController

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showAlertButtonHandler(sender: AnyObject) {
        self.show(withIcon: true)
    }
    @IBAction func showWithoutIconHandler(sender: AnyObject) {
        self.show(withIcon: false)
    }
    
    func show(withIcon withIcon:Bool!) {
        
        if let navController : ZKNavigationController = self.navigationController as? ZKNavigationController {
            
            if !withIcon {
                let popupView = ZKNavigationPopupView(navigationController: navController, Icon: nil, Message: "Showing a ZKAlert")
                navController.showAlert(popupView)
            } else {
                let icon = ZKIcon(image: UIImage(named: "image"))
                let popupView = ZKNavigationPopupView(navigationController: navController, Icon: icon, Message: "Showing a ZKAlert")
                navController.showAlert(popupView)
            }
        } else {
            print("COULD NOT DO ZKNAVCONTROLLER")
        }
    }

}

