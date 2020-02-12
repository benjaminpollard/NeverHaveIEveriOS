//
//  NeverHaveIEverApiService.swift
//  NeverHaveIEver
//
//  Created by benjamin pollard on 11/02/2020.
//  Copyright © 2020 benjamin pollard. All rights reserved.
//

import Foundation
import Alamofire
class NeverHaveIEverApiService  {
    
    func GetCards(onComplete: @escaping((_ result: ResponseModel<NeverHaveIEverModel?> ) -> () ))  {
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            debugPrint(response)
            
            let responseModel: ResponseModel<NeverHaveIEverModel?> = ResponseModel<NeverHaveIEverModel?>()
            
            if(response.error == nil)
            {
                onComplete(responseModel)
            }
            else
            {
                let error = ErrorModel();
                error.message = response.error.debugDescription;
                error.statusCode = response.response?.statusCode
                responseModel.responseError = error;
                onComplete(responseModel)
            }
        }
    }
}
