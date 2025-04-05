//
//  MySwiftTestingProjectTwoTests.swift
//  MySwiftTestingProjectTwoTests
//
//  Created by Manyuchi, Carrington C on 2025/04/04.
//

import Testing
@testable import MySwiftTestingProjectTwo


struct MySwiftTestingProjectTwoTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

    @Test func verifyPeoplesAgesAreTheSame() {
        let person1 = PersonModel(name: "Carrington", age: 30)
        let person2 = PersonModel(name: "Josephine", age: 30)
        
        #expect(person1.age == person2.age)
        
    }
}
