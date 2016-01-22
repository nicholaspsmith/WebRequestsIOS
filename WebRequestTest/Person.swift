//
//  Person.swift
//  WebRequestTest
//
//  Created by Nick on 1/21/16.
//  Copyright © 2016 Nick. All rights reserved.
//

import Foundation

class SWPerson {
    private var _name: String!
    private var _height: String!
    private var _birthYear: String!
    private var _hairColor: String!
    
    var name: String {
        return _name
    }
    
    var height: String {
        get {
            return _height
        }
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    init(name: String, height: String, birthYear: String, hairColor: String) {
        _name = name
        _height = height
        _birthYear = birthYear
        _hairColor = hairColor
    }
}