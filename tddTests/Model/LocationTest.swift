//
//  LocationTest.swift
//  tddTests
//
//  Created by Aminjoni Abdullozoda on 6/26/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest
import CoreLocation

@testable import tdd

class LocationTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLocationWhenItSetCordinate () {
        let coordinate = CLLocationCoordinate2D(latitude: 1, longitude: 2)
        let location = Location(name: "4th St", coordinate: coordinate)
        
        XCTAssertEqual(coordinate.longitude, location.cordinate?.longitude)
        XCTAssertEqual(coordinate.latitude, location.cordinate?.latitude)
    }

}
