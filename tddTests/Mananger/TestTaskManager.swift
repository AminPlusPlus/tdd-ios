//
//  TestTaskManager.swift
//  tddTests
//
//  Created by Aminjoni Abdullozoda on 6/26/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest
@testable import tdd

class TestTaskManager: XCTestCase {
    
    var sut  : TaskManager!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = TaskManager()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitTaskManagerZeroTask(){
        XCTAssertEqual(sut.tasksCount, 0)
    }
    
    func testTaskManagetAddTaskCountToOne () {
        let task = Task(title: "Foo")
        sut.add(task: task)
        
        XCTAssertEqual(sut.tasksCount, 1)
    
    }
    
    
    func testTaskAtIndexIsAddedTask() {
       let task = Task(title: "Foo")
        sut.add(task: task)
        let backTask = sut.task(at:0)
        XCTAssertEqual(backTask.title, task.title)
    }
    
    func testAddedTaskIsCompleted() {
        let task = Task(title: "Foo")
        sut.add(task: task)
        sut.checkTask(at:0)
        
        XCTAssertEqual(sut.doneTaskCount, 1)
        XCTAssertEqual(sut.tasksCount, 0)
    }
    
    func testCompletedTaskRemoved() {
        let task = Task(title: "Foo")
        let task1 = Task(title: "Bar")
        sut.add(task: task)
        sut.add(task: task1)
        //remove task
        sut.checkTask(at:0)
              
        XCTAssertEqual(sut.task(at: 0), task1)

    }
    
    func testCompletedTask() {
        let task = Task(title: "Foo")
        sut.add(task: task)
        
        //remove task
        sut.checkTask(at:0)
        
        let donetask = sut.completeTask(at: 0)
        
        XCTAssertEqual(donetask, task)
        
    }
    
    
    func testMakeEmptyAllTask() {
        sut.removeAll()
        
        XCTAssertTrue(sut.tasksCount == 0)
        XCTAssertTrue(sut.doneTaskCount == 0)
    }
    
    func testWhenTaskExistNotAddIt() {
        let task1 = Task(title: "Foo")
        let task2 = Task(title: "Foo")
        sut.add(task: task1)
        sut.add(task: task2)
        
        XCTAssertTrue(sut.tasksCount == 1)
    }
    
}
