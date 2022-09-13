//
//  ClassRelation.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/13.
//



import Foundation

class ClassRelation {
  
}

// 1. 泛化
extension ClassRelation {
  class Base {
    func foo() {
      
    }
  }
  
  class Subclass: Base {
    override func foo() {
      super.foo()
      // more ..
    }
  }
}

// 2. 组合
extension ClassRelation {
  class ClassA {
    private let wrapped = ClassB()
    
    func foo() {
      wrapped.foo()
    }
  }
  
  class ClassB {
    func foo() {
      
    }
  }
}

// 3. 实现
private protocol Runnable {
  func run()
}

extension ClassRelation {
  class Runner: Runnable {
    func run() {
      // i can run
    }
  }
}

// 4 依赖

extension ClassRelation {
  private class Child {
    
  }
  
  class Parent {
    private var children = [Child]()
  }
}


