//
//  MySwiftTestingProjectTwoTests.swift
//  MySwiftTestingProjectTwoTests
//
//  Created by Manyuchi, Carrington C on 2025/04/04.
//

import Testing
@testable import MySwiftTestingProjectTwo
import Foundation


struct MySwiftTestingProjectTwoTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

    @Test func verifyPeoplesAgesAreTheSame() {
        let person1 = PersonModel(name: "Carrington", age: 30)
        let person2 = PersonModel(name: "Josephine", age: 30)
        
        #expect(person1.age == person2.age)
        
    }
    
    @Test func validateName() {
        let person = PersonModel2(name: "Carrington", birthDate: Date(), phoneNumber: [])
        #expect(person.name == "Carrington")
    }
    
    @Test func validateBirthDate() {
        let calendar = Calendar(identifier: .gregorian)
        var birthDateComponents = DateComponents()
        birthDateComponents.month = 4
        birthDateComponents.day = 30
        var birthday = calendar.date(from: birthDateComponents)!
        let person = PersonModel2(name: "Carrington", birthDate: birthday, phoneNumber: [])
        #expect(person.isBirthday(onDay: birthday) == true)
        
        birthDateComponents.day = 15
        birthday = calendar.date(from: birthDateComponents)!
        #expect(person.isBirthday(onDay: birthday) == false)
    }
    
    @Test func validatePhoneNumberExist() {
        let person = PersonModel2(name: "Carrington", birthDate: Date(), phoneNumber: ["0659957881"])
        #expect(person.phoneNumber.isEmpty == false)
        
    }
}
