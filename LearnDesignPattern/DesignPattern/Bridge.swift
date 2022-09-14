//
//  Bridge.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

import Foundation
import CoreGraphics

public protocol Drawable {
  func drawCircle(center: CGPoint, radius: CGFloat)
}

public class DrawableLogger: Drawable {
  public func drawCircle(center: CGPoint, radius: CGFloat) {
    print("draw at \(center), radius: \(radius)")
  }
  
  public init() {}
}

public protocol Shape {
  func draw()
}

public struct Circle: Shape {
  let drawable: Drawable
  let center: CGPoint
  let radius: CGFloat
  
  public init(drawable: Drawable, center: CGPoint, radius: CGFloat) {
    self.drawable = drawable
    self.radius = radius
    self.center = center
  }
  
  public func draw() {
    self.drawable.drawCircle(center: center, radius: radius)
  }
}
