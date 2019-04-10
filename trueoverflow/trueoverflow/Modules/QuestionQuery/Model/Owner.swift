//
//  Owner.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import Foundation

struct Owner: Codable {
    
    let reputation: Int
    let userId: Int
    let userType: String
    let acceptRate: Int
    let profileImage: String
    let displayName: String
    let link: String
}
