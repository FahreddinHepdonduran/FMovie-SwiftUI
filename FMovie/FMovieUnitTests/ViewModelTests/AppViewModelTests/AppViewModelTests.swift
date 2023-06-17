//
//  FMovieUnitTests.swift
//  FMovieUnitTests
//
//  Created by Fahreddin Hepdonduran on 9.06.2023.
//

import XCTest
import Combine
@testable import FMovie

final class AppViewModelTests: XCTestCase {
    
    var sut: AppViewModel!
    var cancellables: Set<AnyCancellable>!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = AppViewModel()
        cancellables = Set<AnyCancellable>()
    }

    override func tearDownWithError() throws {
        sut = nil
        cancellables = nil
        try super.tearDownWithError()
    }
    
    func testSceneTypePublisher() throws {
        let expectation = XCTestExpectation(description: "Scene type publisher test")
        let expectedValues: [SceneType] = [.splash, .onboarding, .login, .signup, .splash]
        var receivedValues: [SceneType] = []
        
        sut.$sceneType
            .sink { sceneType in
                receivedValues.append(sceneType)
                
                guard receivedValues.count == expectedValues.count else {
                    return
                }
                
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        expectedValues.enumerated().forEach { index, sceneType in
            guard index != 0 else { return }
            sut.sceneType = sceneType
        }
        
        wait(for: [expectation], timeout: 1.0)
        
        XCTAssertEqual(receivedValues, expectedValues)
    }
    
    func testSelectedOnboardingTabIndexPublisher() throws {
        let expectation = XCTestExpectation(description: "Scene type publisher test")
        let onboardingStepCount: Int = sut.onboardingData().count
        let expectedValues: [Int] = Array(0...onboardingStepCount-1)
        var receivedValues: [Int] = []
        
        sut.$selectedOnboardingTabIndex
            .sink { tabIndex in
                receivedValues.append(tabIndex)
                
                guard receivedValues.count == expectedValues.count else {
                    return
                }
                
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        expectedValues.enumerated().forEach { index, tabIndex in
            guard index != 0 else { return }
            sut.selectedOnboardingTabIndex = tabIndex
        }
        
        wait(for: [expectation], timeout: 1.0)
        
        XCTAssertEqual(receivedValues, expectedValues)
    }
    
}
