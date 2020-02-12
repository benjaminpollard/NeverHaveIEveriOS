//
//  AnalyticsService.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 12/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import Firebase

class AnalyticsService {
    func sendCardVoteBad(id: String, text: String) {
        var params = [String : Any]()
        params["id"] = id
        params["text"] = text
        Analytics.logEvent("VotedBad", parameters: params)
    }
}
