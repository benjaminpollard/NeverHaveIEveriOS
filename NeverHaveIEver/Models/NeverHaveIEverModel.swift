//
//  NeverHaveIEverModel.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 07/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class NeverHaveIEverModel : Object {
        
    /// String. Unique Id.
    @objc dynamic var id: String = ""

    @objc dynamic var info: String?
    
    @objc dynamic var seen: Bool = false;

    @objc dynamic var votedBad: Bool = false;
    
    @objc dynamic var userCreated: Bool = false;
    
    let catagorys = List<String>()
    
    


    /**
     String. Use to identify object.
     */
    override class func primaryKey() -> String {
        return "id"
    }
}

