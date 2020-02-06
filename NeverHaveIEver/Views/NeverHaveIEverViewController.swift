//
//  NeverHaveIEverViewController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 06/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import SideMenu
import UIKit

class NeverHaveIEverViewController : UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

   
    @IBOutlet weak var menuIcon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuIcon.imageView?.tintColor = UIColor.white
        menuIcon.tintColor =  UIColor.white
       
        if let navigationController = self.navigationController as? UISideMenuNavigationController {
            navigationController.sideMenuManager.menuAnimationBackgroundColor = UIColor.clear
        }
        
        let menu = SideMenuNavigationController(rootViewController: self)
        menu.presentationStyle.backgroundColor = .clear
    }


}

