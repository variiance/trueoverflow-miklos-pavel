//
//  AppCoordinator.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {
    
    var children: [String : Coordinator] = [:]
    var rootViewController: UIViewController = UINavigationController()
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Search", bundle: nil)
        let searchVC = storyboard.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        searchVC.viewModel = SearchViewModel()
        
        rootViewController.addChild(searchVC)
        searchVC.navigationController?.setNavigationBarHidden(true, animated: false)
        
        window.rootViewController = rootViewController
    }
}
