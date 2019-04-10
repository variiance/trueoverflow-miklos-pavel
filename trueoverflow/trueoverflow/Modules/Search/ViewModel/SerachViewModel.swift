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
import ReactiveKit

protocol SearchViewModelInput {
    func fetchQuestions(query: String)
}

protocol SearchViewModelOutput {
    var errorMessage: PublishSubject<String, NoError> { get }
}

protocol SearchViewModelType {
    var input: SearchViewModelInput { get }
    var output: SearchViewModelOutput { get }
}

class SearchViewModel: SearchViewModelInput, SearchViewModelOutput, SearchViewModelType {
    
    // MARK: - Properties
    
    var input: SearchViewModelInput { return self }
    var output: SearchViewModelOutput { return self }
    
    var errorMessage = PublishSubject<String, NoError>()
    
    // MARK: - Input
    
    func fetchQuestions(query: String) {
        
        do {
            try Networking.fetchQuestions(query: "swift") { (result: Alamofire.Result<Items>) in
                
            }
        } catch {
            errorMessage.next("Networking error.")
        }
    }
}
