//
//  PersistenceMigrationService.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 12/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import RealmSwift
import MDPersistence

class PersistenceMigrationService : MigrationHelperProtocol
{
    func GetConfiguration() -> Realm.Configuration {
        return Realm.Configuration(schemaVersion: 0, migrationBlock: { migration, oldSchemaVersion in
                   // We haven’t migrated anything yet, so oldSchemaVersion == 0
                   if (oldSchemaVersion < 1) {
                       // Nothing to do!
                       // Realm will automatically detect new properties and removed properties
                       // And will update the schema on disk automatically
                       //
                       //    Removed the following from JobModel
                       //
                       //    1. dynamic var isJobToBeUploaded = false
                       //
                       //    2. dynamic var status: Int = Enums.JobStatus.NotStarted.rawValue;
                       //
                       //
                   }
               }, shouldCompactOnLaunch: { totalBytes, usedBytes in
                   // totalBytes refers to the size of the file on disk in bytes (data + free space)
                   // usedBytes refers to the number of bytes used by data in the file
                   
                   // Compact if the file is over 100MB in size and less than 50% 'used'
                   let oneHundredMB = 100 * 1024 * 1024
                   return (totalBytes > oneHundredMB) && (Double(usedBytes) / Double(totalBytes)) < 0.5
               });
    }
}
