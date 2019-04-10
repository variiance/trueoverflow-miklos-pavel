//
//  Question.swift
//  trueoverflow
//
//  Created by Mac on 2019. 04. 10..
//  Copyright © 2019. truemotion. All rights reserved.
//

import UIKit

struct Question: Codable {
    
    let tags: [String]
    let owner: Owner
    let isAnswered: Bool
    let closedDate: TimeInterval
    let answerCount: Int
    let score: Int
    let lastActivityDate: TimeInterval
    let creationDate: TimeInterval
    let questionId: Int
    let link: String
    let closedReasion: String
    let title: String
}
