//
//  FormValidationViewModelTests.swift
//  FMovieUnitTests
//
//  Created by Fahreddin Hepdonduran on 18.06.2023.
//

import XCTest
import Combine
@testable import FMovie

final class FormValidationViewModelTests: XCTestCase {

    var sut: FormValidationViewModel!
    var cancellables: Set<AnyCancellable>!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = FormValidationViewModel()
        cancellables = Set<AnyCancellable>()
    }

    override func tearDownWithError() throws {
        sut = nil
        cancellables = nil
        try super.tearDownWithError()
    }

    func testDidBindingsHappened() throws {
        let didPerformBindings = sut.didPerformBindings
        XCTAssertTrue(didPerformBindings)
    }
    
    func testEmailAndPasswordWrongFormat() throws {
        let expectation = XCTestExpectation(description: "Wrong email and password test")
        let email = "testexamplecom"
        let password = "12345"
        
        var isFieldsValid = false
        
        sut.$isFieldsValid
            .sink(receiveValue: { flag in
                isFieldsValid = flag
                expectation.fulfill()
            })
            .store(in: &cancellables)
        
        sut.email = email
        sut.password = password
        
        wait(for: [expectation], timeout: 1.0)
        
        XCTAssertFalse(isFieldsValid)
    }
    
    func testWrongEmailAndCorrectPasswordFormat() throws {
        let expectation = XCTestExpectation(description: "Wrong email and correct password test")
        let email = "testexamplecom"
        let password = "Passss1?"
        
        var isFieldsValid = false
        
        sut.$isFieldsValid
            .sink(receiveValue: { flag in
                isFieldsValid = flag
                expectation.fulfill()
            })
            .store(in: &cancellables)
        
        sut.email = email
        sut.password = password
        
        wait(for: [expectation], timeout: 1.0)
        
        XCTAssertFalse(isFieldsValid)
    }
    
    func testCorrectEmailAndWrongPasswordFormat() throws {
        let expectation = XCTestExpectation(description: "Correct email and wrong password test")
        let email = "test@example.com"
        let password = "1234"
        
        var isFieldsValid = false
        
        sut.$isFieldsValid
            .sink(receiveValue: { flag in
                isFieldsValid = flag
                expectation.fulfill()
            })
            .store(in: &cancellables)
        
        sut.email = email
        sut.password = password
        
        wait(for: [expectation], timeout: 1.0)
        
        XCTAssertFalse(isFieldsValid)
    }
    
    func testEmailAndPasswordCorrectFormat() throws {
        let expectation = XCTestExpectation(description: "Correct email and password test")
        let email = "test@example.com"
        let password = "Passss1?"
        
        var isFieldsValid = false
        
        sut.$isFieldsValid
            .sink(receiveValue: { flag in
                isFieldsValid = flag
                expectation.fulfill()
            })
            .store(in: &cancellables)
        
        sut.email = email
        sut.password = password
        
        wait(for: [expectation], timeout: 1.0)
        
        XCTAssertTrue(isFieldsValid)
    }

}
