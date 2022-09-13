//
//  Demo.swift
//  LearnDesignPattern
//
//  Created by beforeold on 2022/9/13.
//

import Foundation
import DesignPattern

class Demo {
  static func test() {
    AbstractClass.test()
    Composition.test()
  }
}

extension Demo {
  private class AbstractClass {
    static func test() {
      let loger = SystemLogger()
      loger.log()
    }
  }
}

extension Demo {
  private class Composition {
    static func test() {
      let wrap = Wrapper()
      wrap.foo()
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
