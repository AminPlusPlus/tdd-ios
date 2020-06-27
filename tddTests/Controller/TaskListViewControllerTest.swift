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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTableViewNotNillWhenViewLoaded() {
        let st = UIStoryboard(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: String(describing: TaskListViewController.self)) as! TaskListViewController
        
        vc.loadViewIfNeeded()
        
        XCTAssertNotNil(vc.tableView)
    
    }

}
