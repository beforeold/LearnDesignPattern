//
//  AbstractClassAndInterface.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/13.
//

import Foundation

public protocol AbstractClassing: AnyObject {
    
}

public extension AbstractClassing {
    func checkOverride() {
        fatalError("subclass should override this method")
    }
    
    func checkInit() {
        if type(of: self) == Self.self {
            checkOverride()
        } else {
            // self is not Abstract class
        }
    }
}

/// an example of  Abstract class
/// 1. should not initialized
/// 2. method should be override
open class AbstractLog: AbstractClassing {
    public init() {
        checkInit()
    }
    
    open func usefulMethodForAllSubclass() {
        print("usefulMethodForAllSubclass")
    }
    
    open func log() {
        checkOverride()
    }
}
