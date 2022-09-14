//
//  Adapter.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public protocol Targeting {
  func f1()
  func f2()
}

public class Adapter {
  public class ClassA {
    
    public init() {}
    
    func a1() {
      print("\(#function)")
    }
    
    func a2() {
      print("\(#function)")
    }
  }
  
  public class ClassB {
    public init() {}
    
    func b1() {
      print("\(#function)")
    }
    
    func b2() {
      print("\(#function)")
    }
  }
}

extension Adapter.ClassA: Targeting {
  public func f1() {
    a1()
  }
  
  public func f2() {
    a2()
  }
}

extension Adapter.ClassB: Targeting {
  public func f1() {
    b1()
  }
  
  public func f2() {
    b2()
  }
}

extension Adapter {
  public class Wrapper: Targeting {
    public init() {}
    let base = ClassA()
    public func f1() {
      base.a1()
    }
    
    public func f2() {
      base.a2()
    }
  }
}
