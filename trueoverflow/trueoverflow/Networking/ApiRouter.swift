//
//  ApiRouter.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import Foundation
import  Alamofire

enum Apirouter: URLRequestConvertible {

    case advancedSearch(query: String)
    
    static private let host = "https://api.stackexchange.com"
    static private let version = "2.2"
    
    static private var baseUrl: String {
        return "\(host)/\(version)"
    }
    
    private var method: HTTPMethod {
        switch self {
        case .advancedSearch:
            return .get
        }
    }
    
    private var path: String {
        switch self {
        case .advancedSearch:
            return "/search/advanced"
        }
    }
    
    private var parameters: String {
        switch self {
        case .advancedSearch(let query):
               return "?q=\(query)&order=desc&sort=activity&site=stackoverflow"
        }
    }
    
    func asURLRequest() throws -> URLRequest {
    
        let url = try (Apirouter.baseUrl + parameters).asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
    }
}
