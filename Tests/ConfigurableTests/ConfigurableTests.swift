//
//  ConfigurableTests.swift
//  Ilya Stroganov
//
//  Created by Ilya Stroganov on 12/11/18.
//  Copyright © 2018 Ilya Stroganov. All rights reserved.
//

import Foundation
import XCTest
@testable import Configurable

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

struct ConfigurableStruct: MutableConfigurable {
    var intValue: Int = 0
    var stringValue: String = ""
}

////////////////////////

class ConfigurableSwiftClass: Configurable {
    var intValue: Int = 0
    var stringValue: String = ""
}

////////////////////////

class ConfigurableObjCClass: NSObject {
    var intValue: Int = 0
    var stringValue: String = ""
}

// OH-SHI??
extension String: MutableConfigurable {}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////

class ConfigurableTests: XCTestCase {
    
    func testStruct() {
        let value = ConfigurableStruct(intValue: 22, stringValue: "pending").configure { item in
            item.intValue = 77
            item.stringValue = "passed"
        }
        
        assert(value.intValue == 77)
        assert(value.stringValue == "passed")
    }

    ////////////////////////

    func testString() {
        let string = "aaa".configure { str in
            str = "bbb"
        }
        
        assert(string == "bbb")
    }
    
    ////////////////////////
    
    func testClass() {
        let value = ConfigurableSwiftClass().configure { c in
            c.intValue = 77
            c.stringValue = "passed"
        }
        
        assert(value.intValue == 77)
        assert(value.stringValue == "passed")
    }
    
    ////////////////////////
    
    func testObjCClass() {
        let value = ConfigurableObjCClass().configure { c in
            c.intValue = 77
            c.stringValue = "passed"
        }
        
        assert(value.intValue == 77)
        assert(value.stringValue == "passed")
    }
}



