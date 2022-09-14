//
//  NSObject+LDPClass.m
//  DesignPattern
//
//  Created by beforeold on 2022/9/14.
//

#import "NSObject+LDPClass.h"

@implementation NSObject (LDPClass)

- (Class)ldp_getClass {
  return [self class];
}

@end
