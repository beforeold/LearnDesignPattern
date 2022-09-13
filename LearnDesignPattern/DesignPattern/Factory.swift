//
//  Factory.swift
//  DesignPattern
//
//  Created by beforeold on 2022/9/13.
//

import Foundation

public protocol ImageProviding {
  func image(from url: URL) -> Data?
}

public class Factory {
  private class DefaultImageProvider: ImageProviding {
    func image(from url: URL) -> Data? {
      nil
    }
  }
  
  private class GifImageProvider: ImageProviding {
    func image(from url: URL) -> Data? {
      nil
    }
  }
  
  public static func provider(for url: URL) -> ImageProviding {
    if url.absoluteString.hasSuffix(".gif") {
      return GifImageProvider()
    }
    
    return DefaultImageProvider()
  }
}
