//
//  MainViewUITest.swift
//  tddUITests
//
//  Created by Aminjoni Abdullozoda on 8/9/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest

class MainViewUITest: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddTaskView () {
        
        let app = XCUIApplication()
        app.navigationBars["Title"].buttons["Add Note"].tap()
        app.textFields["Note Title"].tap()
        app.buttons["Button"].tap()
        
        let helloStaticText = app.tables/*@START_MENU_TOKEN@*/.staticTexts["hello"]/*[[".cells.staticTexts[\"hello\"]",".staticTexts[\"hello\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        helloStaticText.tap()
        helloStaticText.tap()
             
    }

}
