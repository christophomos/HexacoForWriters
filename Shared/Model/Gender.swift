//
//  Gender.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

enum Gender: CustomStringConvertible, CaseIterable {
    
    case male
    case female
    // TODO: Implement other
    case other //(description: String)
    
    var description: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        case .other: return "Other"
        // case let .other(description): return description
        }
    }
}
