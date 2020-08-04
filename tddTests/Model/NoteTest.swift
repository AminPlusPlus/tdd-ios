//
//  NoteTest.swift
//  tddTests
//
//  Created by Aminjoni Abdullozoda on 8/3/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import XCTest
@testable import tdd


class NoteTest: XCTestCase {

    
    func testNoteExist() {
        let note = Note(title: "Hello")
        
        XCTAssertNotNil(note)
    }
  

}
