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
    Builder.test()
    Bridge.test()
    Decorator.test()
    Adapter.test()
    Composite.test()
  }
}

extension Demo {
  open class SystemLogger: AbstractLog {
    public override init() {
      print("system log init")
    }
    
    open override func log() {
      print("system log")
    }
  }

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

extension Demo {
  private class Builder {
    static func test() {
      _ = ConstructorArg(string: "string")
      _ = ConstructorArg(arg: NSObject(), type: NSObject.self)
      
      _ = ConstructorArgEnum.string("string")
      _ = ConstructorArgEnum.type(arg: NSObject(), type: NSObject.self)
      
      _ = try! ConstructorArg.Builder()
        .setIsRef(true)
        .setArg("string" as NSString)
        .build()
      
      _ = try! ConstructorArg.Builder()
        .setIsRef(false)
        .setArg(NSObject())
        .setType(NSObject.self)
        .build()
      
      print("build success")
    }
  }
}

extension Demo {
  class Bridge {
    static func test() {
      let circle = Circle(drawable: DrawableLogger(),
                          center: .zero,
                          radius: 5)
      circle.draw()
    }
  }
}

extension Demo {
  class Decorator {
    static func test() {
      let p = DesignPattern.Decorator.Person()
      p.work()
      p.sing()
    }
  }
}

extension Demo {
  class Adapter {
    static func test() {
      let adapter = DesignPattern.Adapter.Wrapper()
      adapter.f1()
      adapter.f2()
      
      let list: [Targeting] = [DesignPattern.Adapter.ClassA(), DesignPattern.Adapter.ClassB()]
      list.forEach { item in
        item.f1()
        item.f2()
      }
    }
  }
}

extension Demo {
  class Facade {
    static func test() {
      let ins = DesignPattern.Facade.API()
      ins.foo()
    }
  }
}

extension Demo {
  class Composite {
    static func test() {
      DesignPattern.Composite.test()
    }
  }
}
