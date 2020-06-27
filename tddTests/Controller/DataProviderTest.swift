//
//  DataProviderTest.swift
//  tddTests
//
//  Created by Aminjoni Abdullozoda on 6/27/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest
@testable import tdd

class DataProviderTest: XCTestCase {
  
    var dataProvider : DataProvider!
    var tableView : UITableView!
    var taskManager = TaskManager()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        dataProvider = DataProvider()
        tableView = UITableView()
        dataProvider.taskManager = taskManager
        
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testTableViewTwoSection() {
        XCTAssertEqual(tableView.numberOfSections, 2)
    }
    
    func testNumberOfRowInZeroSection () {
        taskManager.add(task: Task(title: "Number 1"))
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 1)
        
        taskManager.add(task: Task(title: "Number 2"))
        
        tableView.reloadData()
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 0), 2)
    }
    
    func testNumberOfRowInDoneSection () {

        taskManager.add(task: Task(title: "Number 1"))
        
        taskManager.checkTask(at: 0)
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 1), 1)
        
        dataProvider.taskManager?.add(task: Task(title: "Number 2"))
        taskManager.checkTask(at: 0)
        
        tableView.reloadData()
        
        XCTAssertEqual(tableView.numberOfRows(inSection: 1), 2)
    }
    
    func testTableInRowCellTaskCell () {
        
        taskManager.add(task: Task(title: "Foo"))
        tableView.reloadData()
        XCTAssertTrue(tableView.cellForRow(at: IndexPath(row: 0, section: 0)) is TaskCell)
    }

}
