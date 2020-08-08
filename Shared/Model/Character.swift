//
//  Character.swift
//  PersonalityQuiz
//
//  Created by Chris Clark on 2020/7/13.
//  Copyright © 2020 Qalang Corporation. All rights reserved.
//

import Foundation

struct Character: Identifiable {
    var id = UUID()
    // TODO: Integrate random name generator
    var firstName: String?
    var lastName: String?
    
    var gender: Gender?
    
    var age: Int?
    
    var hexaco: Hexaco60InventoryScore? = nil
    
    var isHaveAName: Bool {
        (firstName != nil) || (lastName != nil)
    }
    
    static let testData = [
        Character(
            firstName: "Evan",
            lastName: "Peters",
            gender: .male,
            age: 33,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Kate",
            lastName: "Mara",
            gender: .female,
            age: 37,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "James",
            lastName: "Van Der Beek",
            gender: .male,
            age: 43,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Mj",
            lastName: "Rodriguez",
            gender: .female,
            age: 29,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Dominique",
            lastName: "Jackson",
            gender: .female,
            age: 45,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Billy",
            lastName: "Porter",
            gender: .male,
            age: 50,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Indya",
            lastName: "Moore",
            gender: .female,
            age: 25,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Ryan",
            lastName: "Swain",
            gender: .male,
            age: 26,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Charlayne",
            lastName: "Woodard",
            gender: .female,
            age: 66,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Hailie",
            lastName: "Sahar",
            gender: .female,
            age: 32,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Angelica",
            lastName: "Ross",
            gender: .female,
            age: 38,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Angel",
            lastName: "Curiel",
            gender: .male,
            age: 24,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Dyllón",
            lastName: "Burnside",
            gender: .male,
            age: 31,
            hexaco: Hexaco60InventoryScore.random()),
        Character(
            firstName: "Sandra",
            lastName: "Bernhard",
            gender: .male,
            age: 65,
            hexaco: Hexaco60InventoryScore.random()),
        
    ]
}


