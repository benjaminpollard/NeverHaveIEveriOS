//
//  SplashViewController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 07/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import UIKit
class SplashViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool){
    super.viewDidAppear(animated)
        //do network stuff
        if(isFirstLaunch())
        {
            self.performSegue(withIdentifier: "goToSelectGameType", sender: self)
        }
        else
        {
            self.performSegue(withIdentifier: "goToCardScreen", sender: self)
        }
    }
    
    func isFirstLaunch() -> Bool {
        if !UserDefaults.standard.bool(forKey: "hasBeenLaunchedBeforeFlag") {
            UserDefaults.standard.set(true, forKey: "hasBeenLaunchedBeforeFlag")
            UserDefaults.standard.synchronize()
            return true
        }
        return false
    }
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "goToCardScreen" {
        let controller = segue.destination as! NeverHaveIEverViewController
            controller.SectionType = UserDefaults.standard.string(forKey: "SectionType") ?? ""
           
       }
   }
}
