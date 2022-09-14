//
//  NSObject+LDPClass.h
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (LDPClass)

/// provide cateogry for swift
- (Class)ldp_getClass;

@end

NS_ASSUME_NONNULL_END
