//
//  Character.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Character {
    // TODO: Integrate random name generator
    var firstName: String?
    var lastName: String?
    
    var gender: Gender?
    
    var age: Int?
    
    var hexaco: Hexaco60InventoryScore?
}
