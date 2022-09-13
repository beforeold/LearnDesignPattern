//
//  Demo.swift
//  LearnDesignPattern
//
//  Created by beforeold on 2022/9/13.
//

import Foundation
import DesignPattern

class Demo {
    class AbstractClass {
        static func test() {
            let loger = SystemLogger()
            loger.log()
        }
    }
}

open class SystemLogger: AbstractLog {
    public override init() {
        print("system log init")
    }
    
    open override func log() {
        print("system log")
    }
}
