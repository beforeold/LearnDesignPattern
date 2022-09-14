//
//  Facade.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public class Facade {
  public class API {
    public init() {
      
    }
    
    public func f1() {
      print(#function)
    }
    
    public func f2() {
      print(#function)
    }
    
    public func f3() {
      print(#function)
    }
    
    /// facade api
    public func foo() {
      f1()
      f2()
      f3()
    }
  }
}
