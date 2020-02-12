//
//  ResponseModel.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 11/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation

/**
 Use to hold response data and error.
 
 Usage: See NetworkService.
 */
class ResponseModel<T> {
    
    // MARK: - Variables
    
    /// Optional Generic Object.
    var responseData: T?
    /// Optional String. Error message
    var responseError: ErrorModel?
}

/**
 Use to hold Error.
 
 Usage: See NetworkService.
 */
class ErrorModel {
    
    // MARK: - Variables
    
    /// Optional Generic Object.
    var message: String = ""
    /// Optional String. Error message
    var statusCode: Int?
}
