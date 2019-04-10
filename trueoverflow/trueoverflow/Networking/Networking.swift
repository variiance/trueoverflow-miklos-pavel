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
    
    static let decoder = JSONDecoder()

    class func fetchQuestions(query: String, completion: @escaping (Result<Question>) -> ()) {
        Alamofire.request(Apirouter.advancedSearch(query: query))
            .responseData { response in
                let questions: Result<Question> = decoder.decodeResponse(from: response)
                completion(questions)
        }
    }
}

