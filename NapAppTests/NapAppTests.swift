//
//  NapAppTests.swift
//  NapAppTests
//
//  Created by Jacob Hillman on 11/12/16.
//  Copyright © 2016 Jacob Hillman. All rights reserved.
//

import XCTest
@testable import NapApp

class NapAppTests: XCTestCase {
    
    //MARK: NapApp Tests
    func testSpotInitialization() {
        //success case
        let potentialItem = Spot(name: "newest spot", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        //fail case
        let noName = Spot(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Spot(name: "really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "negative values are invalid, be positive")
        
    }
    
}
