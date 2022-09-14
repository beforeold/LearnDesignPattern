//
//  Proxy.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public class Proxy {
  
}

public protocol IUserController {
  func login()
  func register()
}

class Collector {
  func begin() {
    
  }
  
  func end() {
    
  }
}

extension Proxy {
  class UserController {
    let collector = Collector()
    
    func login() {
      collector.begin()
      // logic
      collector.end()
    }
    
    func register() {
      collector.begin()
      // logic
      collector.end()
    }
  }
}

extension Proxy {
  class UserController2: IUserController {
    func login() {
      // logic
    }
    
    func register() {
      // logic
    }
  }
  
  class UserControllerProxy2: IUserController {
    let controller = UserController2()
    let collector = Collector()
    
    func login() {
      collector.begin()
      controller.login()
      collector.end()
    }
    
    func register() {
      collector.begin()
      controller.register()
      collector.end()
    }
  }
}

extension Proxy {
  class UserController3 {
    func login() {
      // logic
    }
    
    func register() {
      // logic
    }
  }
  
  class UserControllerProxy3: UserController3 {
    let collector = Collector()
    
    override func login() {
      collector.begin()
      super.login()
      collector.end()
    }
    
    override func register() {
      collector.begin()
      super.register()
      collector.end()
    }
  }
}
