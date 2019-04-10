//
//  SearchViewController.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import UIKit
import Bond
import Alamofire

class SearchViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var resultsTableView: UITableView!
    
    // MARK: - Properties
    
    var viewModel: SearchViewModelType!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.input.fetchQuestions(query: "swift")
    }
}

