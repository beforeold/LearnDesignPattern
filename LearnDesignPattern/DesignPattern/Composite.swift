//
//  Composite.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation

public class Composite {
  public class FileNode {
    
  }
  
  public class File: FileNode {
    
  }
  
  public class Directory: FileNode {
    public private(set) var children = [FileNode]()
    
    public func add(_ node: FileNode) {
      children.append(node)
    }
  }
}

extension Composite {
  static func countOf(directory: Directory) -> Int {
    var count = 0
    for node in directory.children {
      if let directory = node as? Directory {
        count += countOf(directory: directory)
      } else {
        count += 1
      }
    }
    return count
  }
  
  public static func test() {
    let root = Directory()
    root.add(File())
    
    let sub = Directory()
    root.add(sub)
    sub.add(File())
    sub.add(File())
    
    print(countOf(directory: root))
  }
}
