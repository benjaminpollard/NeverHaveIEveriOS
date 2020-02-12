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
    
    @IBOutlet weak var teenMenuButton: UIButton!
    {
        didSet{
            teenMenuButton.backgroundColor = .clear
            teenMenuButton.layer.cornerRadius = 22
            teenMenuButton.layer.borderWidth = 2
            teenMenuButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet weak var adultMenuButton: UIButton!
    {
        didSet{
            adultMenuButton.backgroundColor = .clear
            adultMenuButton.layer.cornerRadius = 22
            adultMenuButton.layer.borderWidth = 2
            adultMenuButton.layer.borderColor = UIColor.white.cgColor
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
    
    @IBAction func onTeenButtonPress(_ sender: Any) {
    }
    
    @IBAction func onAdultButtonPress(_ sender: Any) {
    }
    @IBAction func onSettingsButotnPress(_ sender: Any) {
    }
    @IBAction func onCreatOwnButtonPress(_ sender: Any) {
    }
}
