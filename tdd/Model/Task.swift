//
//  Task.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 6/25/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import Foundation

struct Task {
    let title : String
    let description : String?
    private(set) var date : Date?
    private(set) var location  : Location?
    
    init(title : String, description : String? = nil, location : Location? = nil) {
        self.title = title
        self.description = description
        self.date = Date()
        self.location = location
    }
}
