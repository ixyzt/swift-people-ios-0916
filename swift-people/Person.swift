//
//  Person.swift
//  swift-people
//
//  Created by Bejan Fozdar on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    let name: String
    var ageInYears: Int?
    var skills: [String] = []
    var qualifiedTutor: Bool {
        return self.skills.count > 3
    }
        
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    init() {
        self.name = "John Doe"
        self.skills = []
        self.ageInYears = nil
        
    }
    
    func celebrateBirthday() -> String {
        var realOtherBirthday: String = ""
        var newAge: Int = 0
        if self.ageInYears == nil {
            let happyBirthday = "HAPPY BIRTHDAY, \(self.name)!!!"
            return happyBirthday.uppercased()
        } else {
            if let valAgeInYears = self.ageInYears {
                newAge = valAgeInYears + 1
                self.ageInYears = newAge
                let ordinal = newAge.ordinal()
                let otherBirthday = "HAPPY \(newAge)\(ordinal) BIRTHDAY, \(self.name)!!!"
                realOtherBirthday = otherBirthday.uppercased()
            }
            
        }
        return realOtherBirthday
    }
    
    func learnSkillBash() {
        if !self.skills.contains("bash") {
            self.skills.append("bash")
        }
    }
    
    func learnSkillXcode() {
        if !self.skills.contains("Xcode") {
            self.skills.append("Xcode")
        }
    }
    
    func learnSkillObjectiveC() {
        if !self.skills.contains("Objective-C") {
            self.skills.append("Objective-C")
        }
    }
    
    func learnSkillSwift() {
        if !self.skills.contains("Swift") {
            self.skills.append("Swift")
        }
    }
    
    func learnSkillInterfaceBuilder() {
        if !self.skills.contains("Interface Builder") {
            self.skills.append("Interface Builder")
        }
    }
    
    
}

