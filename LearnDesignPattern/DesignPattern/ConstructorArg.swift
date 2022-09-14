//
//  ConstructorArg.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public class ConstructorArg {
  private let isRef: Bool
  private let type: AnyClass?
  private let arg: NSObject
  
  public init(string: NSString) {
    self.isRef = true
    self.type = nil
    self.arg = string
  }
  
  public init(arg: NSObject) {
    self.isRef = false
    self.type = arg.ldp_getClass()
    self.arg = arg
  }
}

public enum ConstructorArgEnum {
  case string(String)
  case type(arg: NSObject, type: AnyClass)
}
