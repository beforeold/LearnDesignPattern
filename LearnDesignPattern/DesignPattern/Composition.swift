//
//  Composition.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/13.
//

import Foundation

public class Body {
  public func foo() {
    print("call foo")
  }
  
  public init() {
  }
}

public class Wrapper {
  private let body = Body()
  
  public init() {
  }
  
  public func foo() {
    body.foo()
  }
}
