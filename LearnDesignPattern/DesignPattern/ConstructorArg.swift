//
//  ConstructorArg.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public class ConstructorArg {
  private let isRef: Bool
  private let arg: NSObject
  private let type: AnyClass?
  
  public init(string: NSString) {
    self.isRef = true
    self.type = nil
    self.arg = string
  }
  
  public init(arg: NSObject, type: AnyClass) {
    self.isRef = false
    self.type = type
    self.arg = arg
  }
  
  internal init(isRef: Bool, arg: NSObject, type: AnyClass?) {
    self.isRef = isRef
    self.arg = arg
    self.type = type
  }
}

extension ConstructorArg {
  public class Builder {
    private var isRef: Bool
    private var type: AnyClass?
    private var arg: NSObject?
    
    public init() {
      self.isRef = false
    }
    
    public enum BuildError: Error {
      case invalidArg
    }
    
    public func setArg(_ arg: NSObject) -> Builder {
      self.arg = arg
      return self
    }
    
    public func setIsRef(_ isRef: Bool) -> Builder {
      self.isRef = isRef
      return self
    }
    
    public func setType(_ type: AnyClass) -> Builder {
      self.type = type
      return self
    }
    
    public func build() throws -> ConstructorArg {
      if isRef,
         let string = arg as? NSString,
         type == nil {
        return ConstructorArg(string: string)
      }
      
      if isRef == false,
         let arg = arg,
         let type = type {
        return ConstructorArg(arg: arg, type: type)
      }
      
      throw BuildError.invalidArg
    }
  }
}

public enum ConstructorArgEnum {
  case string(String)
  case type(arg: NSObject, type: AnyClass)
}
