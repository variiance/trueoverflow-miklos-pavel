//
//  SerachViewModel.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import Foundation
import Bond
import Alamofire

protocol SearchViewModelInput {
    func fetchQuestions(query: String)
}

protocol SearchViewModelOutput {
    
}

protocol SearchViewModelType {
    var input: SearchViewModelInput { get }
    var output: SearchViewModelOutput { get }
}

class SearchViewModel: SearchViewModelInput, SearchViewModelOutput, SearchViewModelType {
    
    // MARK: - Properties
    
    var input: SearchViewModelInput { return self }
    var output: SearchViewModelOutput { return self }
    
    // MARK: - Input
    
    func fetchQuestions(query: String) {
        
        do {
            try Networking.fetchQuestions(query: "swift") { (result: Result<[Question]>) in
                print(result.description)
            }
        } catch {
            print(error)
        }
    }
}
