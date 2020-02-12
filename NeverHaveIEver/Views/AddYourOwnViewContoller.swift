//
//  AddYourOwnViewContoller.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 11/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import UIKit
import Toast_Swift
import MDPersistence

class AddYourOwnViewContoller : UIViewController {
    @IBOutlet weak var editText: UITextView!
    
    var controller : AddCardController!;
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        controller = AddCardController(database: PersistenceService(migrationHelperProtocol: PersistenceMigrationService()));
        
    }
    @IBAction func onSummit(_ sender: Any) {
        if(editText.text != "")
        {
            controller.AddCard(toType: "", cardText: editText.text)
            navigationController?.popViewController(animated: true)
        }
        else
        {
            self.view.makeToast("Enter In Text")
        }
    }
}
