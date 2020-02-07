//
//  SelectGameTypeViewController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 07/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import UIKit
class SelectGameTypeViewController: UIViewController {
    var type = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onTeenSelected(_ sender: Any) {
        type = "TEEN"
        self.performSegue(withIdentifier: "goToCardScreen", sender: self)
    }
    
    @IBAction func onAdultSlected(_ sender: Any) {
        type = "ADULT"
        self.performSegue(withIdentifier: "goToCardScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToCardScreen" {
         let controller = segue.destination as! NeverHaveIEverViewController
             controller.SectionType = type
             UserDefaults.standard.set(type, forKey: "SectionType")
             UserDefaults.standard.synchronize()
        }
    }
}
