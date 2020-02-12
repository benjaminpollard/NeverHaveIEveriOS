//
//  AddCardController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 12/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import MDPersistence
class AddCardController {
    var database : PersistenceService;
    init(database: PersistenceService ) {
        self.database = database
    }
    
    public func AddCard(toType:String, cardText: String) {
        let neverHaveIEverCard = NeverHaveIEverModel();
        neverHaveIEverCard.id = UUID().uuidString
        neverHaveIEverCard.info = cardText;
        neverHaveIEverCard.catagorys.append(toType)
        neverHaveIEverCard.userCreated = true;
        database.SaveItem(item: neverHaveIEverCard, hasPrimaryKey: true)
    }
}
