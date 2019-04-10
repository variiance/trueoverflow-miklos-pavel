//
//  Coordinator.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import UIKit

protocol Coordinator {
    var children: [String: Coordinator] { get }
    var rootViewController: UIViewController { get }
    
    func start()
}
