//
//  Apiservice.swift
//  api_Integration
//
//  Created by Muhammad Abdullah Al Mamun on 17/12/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//
var baseUrl = "http://127.0.0.1:8000/api"
var jsons:JSON?

import Foundation
import Alamofire
import SwiftyJSON

let headers: HTTPHeaders = [
      "Accept": "application/json"
  ]

//
//func fetchData(apitype: String, urlString: String, baseURL: String, completeonClosure: (AnyObject?) -> ()){
//    
//    AF.request("\(urlString)", headers: headers).response
//        { response in
//            
//         //let items = JSON(response.value as Any)
//         
//            completeonClosure(response.value as AnyObject?)
//     
//    }

//}
