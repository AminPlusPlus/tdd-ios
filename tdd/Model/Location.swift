//
//  Location.swift
//  tdd
//
//  Created by Aminjoni Abdullozoda on 6/26/20.
//  Copyright © 2020 Aminjoni Abdullozoda. All rights reserved.
//

import Foundation
import CoreLocation

struct Location  {
    
    let name : String
    var cordinate : CLLocationCoordinate2D?
    
    init(name : String, coordinate : CLLocationCoordinate2D? = nil) {
        self.name = name
        self.cordinate = coordinate
    }
}

extension Location :  Equatable  {
    static func == (lhs: Location, rhs: Location) -> Bool {
        
        guard lhs.cordinate?.longitude == rhs.cordinate?.longitude &&
            lhs.cordinate?.latitude == rhs.cordinate?.latitude &&
            lhs.name == rhs.name else  {return false}
        
        
        return true
    }
    
    
}
