//
//  MenuViewController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 06/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import UIKit
class MenuViewController :ViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBOutlet weak var naughtyMenuButton: UIButton!
    {
        didSet{
            naughtyMenuButton.backgroundColor = .clear
            naughtyMenuButton.layer.cornerRadius = 22
            naughtyMenuButton.layer.borderWidth = 2
            naughtyMenuButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var cleanMenuButton: UIButton!
    {
        didSet{
            cleanMenuButton.backgroundColor = .clear
            cleanMenuButton.layer.cornerRadius = 22
            cleanMenuButton.layer.borderWidth = 2
            cleanMenuButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBOutlet weak var exposedMenuButton: UIButton!
      {
          didSet{
              exposedMenuButton.backgroundColor = .clear
              exposedMenuButton.layer.cornerRadius = 22
              exposedMenuButton.layer.borderWidth = 2
              exposedMenuButton.layer.borderColor = UIColor.white.cgColor
          }
      }
    
    @IBOutlet weak var couplesMenuButton: UIButton!
      {
          didSet{
              couplesMenuButton.backgroundColor = .clear
              couplesMenuButton.layer.cornerRadius = 22
              couplesMenuButton.layer.borderWidth = 2
              couplesMenuButton.layer.borderColor = UIColor.white.cgColor
          }
      }
    
    @IBOutlet weak var settingsMenuButton: UIButton!
    {
        didSet{
            settingsMenuButton.backgroundColor = .clear
            settingsMenuButton.layer.cornerRadius = 22
            settingsMenuButton.layer.borderWidth = 2
            settingsMenuButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBOutlet weak var addYourOWnMenuButton: UIButton!
    {
        didSet{
            addYourOWnMenuButton.backgroundColor = .clear
            addYourOWnMenuButton.layer.cornerRadius = 22
            addYourOWnMenuButton.layer.borderWidth = 2
            addYourOWnMenuButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBAction func onNaughtyButtonPress(_ sender: Any) {
    }
    
    @IBAction func onCleanButtonPress(_ sender: Any) {
    }
    
    @IBAction func onExposedButtonPress(_ sender: Any) {
    }
    @IBAction func onCouplesButtonPress(_ sender: Any) {
       }
    
    @IBAction func onSettingsButotnPress(_ sender: Any) {
    }
    @IBAction func onCreatOwnButtonPress(_ sender: Any) {
    }
}
