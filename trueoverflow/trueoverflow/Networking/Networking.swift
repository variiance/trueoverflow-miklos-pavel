//
//  Networking.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import Foundation
import Alamofire

class Networking {
    
    static var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return decoder
    }()

    class func fetchQuestions(query: String, completion: @escaping (Result<Items>) -> ()) throws {
        Alamofire.request(Apirouter.advancedSearch(query: query))
            .responseData { response in
                let items: Result<Items> = decoder.decodeResponse(from: response)
                completion(items)
        }
    }
}

