//
//  TaskTests.swift
//  tddTests
//
//  Created by Aminjoni Abdullozoda on 6/25/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest
@testable import tdd

class TaskTests: XCTestCase {

    func testTaskInit() {
        let task = Task(title: "Foo")
        XCTAssertNotNil(task)
    }
    
    func testTaskTitle(){
        let task = Task(title: "Foo")
        XCTAssertEqual(task.title, "Foo")
    }
    
    func testTaskWhenGivenDescription(){
        let task = Task(title: "Foo", description : "Bar")
        XCTAssertEqual(task.description, "Bar")
    }
    
    func testTaskWhenInitDate() {
        let task = Task(title: "Food")
        XCTAssertNotNil(task.date)
    }
    
    func testTaskWhenSetLocation () {
        let location = Location(name: "1000N 4th ST")
        let task = Task(title: "Foo",location: location )
        
        XCTAssertEqual(location, task.location)
    }
    
    

}
