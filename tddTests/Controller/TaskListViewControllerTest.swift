//
//  TaskListViewControllerTest.swift
//  tddTests
//
//  Created by Aminjoni Abdullozoda on 6/26/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest

@testable import tdd

class TaskListViewControllerTest: XCTestCase {
    
    var vc : TaskListViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let st = UIStoryboard(name: "Main", bundle: nil)
        vc = st.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self)) as? TaskListViewController
        
        vc.loadViewIfNeeded()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableViewNotNillWhenViewLoaded() {
        XCTAssertNotNil(vc.tableView)
    
    }
    
    func testWhenViewIsLoadedDataProviderIsNotNill (){
        XCTAssertNotNil(vc.dataProvider)
    }
    
    func testWhenListTableViewDelegateIsNotNil () {
        XCTAssertNotNil(vc.tableView.delegate)
    }
   
    func testWhenListTableViewDataSourceIsNotNil () {
        XCTAssertNotNil(vc.tableView.dataSource)
    }
    
    func testWhenListTableViewDelegateEqualToDataSource () {
        XCTAssertEqual(vc.tableView.delegate as? DataProvider, vc.tableView.dataSource as? DataProvider)
       }

}
