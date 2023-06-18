//
//  FormValidatorTests.swift
//  FMovieUnitTests
//
//  Created by Fahreddin Hepdonduran on 18.06.2023.
//

import XCTest
@testable import FMovie

final class FormValidatorTests: XCTestCase {
    
    var sut: FormValidator!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = FormValidator.shared
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testEmailCorretFormatShouldReturnTrue() throws {
        let email = "test@example.com"
        
        let flag: Bool = sut.validate(text: email, regex: .email)
        
        XCTAssertTrue(flag)
    }
    
    func testEmailWrongFormatShouldReturnFalse() throws {
        let email = "testexamplecom"
        
        let flag: Bool = sut.validate(text: email, regex: .email)
        
        XCTAssertFalse(flag)
    }
    
    func testPasswordCorretFormatShouldReturnTrue() throws {
        let password = "Passssss1?"
        
        let flag: Bool = sut.validate(text: password, regex: .password)
        
        XCTAssertTrue(flag)
    }
    
    func testPasswordWrongFormatShouldReturnFalse() throws {
        let password = "12345"
        
        let flag: Bool = sut.validate(text: password, regex: .password)
        
        XCTAssertFalse(flag)
    }

}
