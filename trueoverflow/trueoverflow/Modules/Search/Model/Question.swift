//
//  Question.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import UIKit

struct Items: Codable {
    let items: [Question]
}

struct Question: Codable {
    
    let tags: [String]
    let owner: Owner
    let isAnswered: Bool
    let closedDate: TimeInterval?
    let answerCount: Int
    let score: Int
    let lastActivityDate: TimeInterval
    let creationDate: TimeInterval
    let questionId: Int
    let link: String
    let closedReason: String?
    let title: String
}
