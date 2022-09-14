//
//  Decorator.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public class Decorator {
  public class Person {
    public init() {}
    public func work() {
      print("work")
    }
  }
}

public extension Decorator.Person {
  func sing() {
    print("i can sing now")
  }
}
