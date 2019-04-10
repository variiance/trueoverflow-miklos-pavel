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

    case question
    
    static private let host = "https://api.stackexchange.com"
    static private let version = "2.2"
    
    static private var baseUrl: String {
        return host + version
    }
    
    private var method: HTTPMethod {
        switch self {
        case .question:
            return .get
        }
    }
    
    private var path: String {
        switch self {
        case .question:
            return "/questions"
        }
    }
    
    private var parameters: Parameters? {
        switch self {
        case .question:
            return [:]
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let url = try Apirouter.baseUrl.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
