//
//  NeverHaveIEverCardController.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 11/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import MDPersistence
class NeverHaveIEverCardController  {
    private var database : PersistenceService;
    private var networkingService : NeverHaveIEverApiService;
    private var analytics : AnalyticsService
    
    init(database: PersistenceService, neverHaveIEverApiService : NeverHaveIEverApiService, analytics : AnalyticsService) {
           self.database = database
           self.networkingService = neverHaveIEverApiService;
           self.analytics = analytics;
    }
    
    public func OnCardVotedBad(id : String) {
        let items = database.GetItems(itemType: NeverHaveIEverModel.self)
        for item in items {
            if(item.id == id)
            {
                analytics.sendCardVoteBad(id: id, text: item.info ?? "error")
                return
            }
        }
    }
    
    public func getCards(ofType: String) -> [NeverHaveIEverModel]
    {
        let items = database.GetItems(itemType: NeverHaveIEverModel.self)
        var itemsWithVoteBadRemoved = [NeverHaveIEverModel]()
        var itemsThatHaveBeenSeen = [NeverHaveIEverModel]()
        
        for item in items {
            if(!item.votedBad && item.catagorys.contains(ofType))
            {
                if(item.seen)
                {
                    if(!item.userCreated)
                    {
                        itemsThatHaveBeenSeen.append(item)
                    }
                    else
                    {
                        itemsWithVoteBadRemoved.append(item)
                    }
                }
                else
                {
                    itemsWithVoteBadRemoved.append(item)
                }
            }
        }
        itemsThatHaveBeenSeen.shuffle();
        itemsWithVoteBadRemoved.shuffle();

        var finishedList = [NeverHaveIEverModel]()
        finishedList = itemsWithVoteBadRemoved + itemsThatHaveBeenSeen
        
        return finishedList;
    }
    
}
