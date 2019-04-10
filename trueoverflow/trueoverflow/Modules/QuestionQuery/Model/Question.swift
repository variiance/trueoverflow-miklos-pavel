//
//  Question.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import UIKit

struct Question: Codable {
    
    let creator: String
    let profileImage: Data
    let isAnswered: Bool
    let viewCount: Int
    let answerCount: Int
    let score: Int
    let date: TimeInterval
}
