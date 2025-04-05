//
//  PersonModel.swift
//  MySwiftTestingProjectTwo
//
//  Created by Manyuchi, Carrington C on 2025/04/04.
//

import Foundation


struct PersonModel {
    var name: String
    var age: Int
}


struct PersonModel2: Decodable {
    var name: String
    var birthDate: Date
    var phoneNumber: [String]

    func isBirthday(onDay date: Date) -> Bool {
        let calendar = Calendar(identifier: .gregorian)
        let potentialMonth = calendar.component(.month, from: date)
        let potentialDay = calendar.component(.day, from: date)
        let personsMonthOfBirth = calendar.component(.month, from: birthDate)
        let personsDayOfBirth = calendar.component(.day, from: birthDate)
        
        return potentialMonth == personsMonthOfBirth && potentialDay == personsDayOfBirth
        
        
    }
}
