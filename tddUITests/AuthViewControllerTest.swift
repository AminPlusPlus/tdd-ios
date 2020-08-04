//
//  TestAuthViewController.swift
//  tddUITests
//
//  Created by Aminjoni Abdullozoda on 8/3/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest


/*
 Scenario-01: Empty username and password
 Given I clear out the username and password fields
 When I tap "Login" button
 Then I expect to see alert "Username cannot be empty"
 */

class AuthViewControllerTest: XCTestCase {
    
    let app = XCUIApplication()
  
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testEmptyUsernameAndPassword(){
        
        let app = XCUIApplication()
        app.textFields["Username"].tap()
        app.textFields["Password"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["Sign In"]/*[[".buttons[\"Sign In\"].staticTexts[\"Sign In\"]",".staticTexts[\"Sign In\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        XCTAssert(app.alerts["OOPS!"].exists, "Alert not exist")
        
    }
    
    func testEmptyUsername(){
         let app = XCUIApplication()
         
        let userTextField = app.textFields["Password"]
         userTextField.tap()
         userTextField.typeText("12345678")
         
         app/*@START_MENU_TOKEN@*/.staticTexts["Sign In"]/*[[".buttons[\"Sign In\"].staticTexts[\"Sign In\"]",".staticTexts[\"Sign In\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let passwordAlert = app.alerts["OOPS!"].scrollViews.otherElements.staticTexts["Missing username or is not correct"]
         
        XCTAssert(passwordAlert.exists, "Alert not exist")
    }
    
    func testEmptyPassword(){
         let app = XCUIApplication()
         
        let userTextField = app.textFields["Username"]
         userTextField.tap()
         userTextField.typeText("amin")
         
         app/*@START_MENU_TOKEN@*/.staticTexts["Sign In"]/*[[".buttons[\"Sign In\"].staticTexts[\"Sign In\"]",".staticTexts[\"Sign In\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let passwordAlert = app.alerts["OOPS!"].scrollViews.otherElements.staticTexts["Missing password or is not correct"]
         
        XCTAssert(passwordAlert.exists, "Alert not exist")
    }
    
    

}
