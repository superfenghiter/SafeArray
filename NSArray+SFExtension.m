//
//  NSArray+SFExtension.m
//  test
//
//  Created by superfeng on 2019/1/14.
//  Copyright © 2019年 superfeng. All rights reserved.
//

#import "NSArray+SFExtension.h"
#import <objc/runtime.h>
#import "JRSwizzle.h"

@implementation NSArray (SFExtension)

+ (void)load
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [NSClassFromString(@"__NSArray0") jr_swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(SF_ObjectAtIndex_NSArray0:) error:nil];
        [NSClassFromString(@"__NSArrayI") jr_swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(SF_ObjectAtIndex_NSArrayI:) error:nil];
        [NSClassFromString(@"__NSArrayM") jr_swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(SF_ObjectAtIndex_NSArrayM:) error:nil];
        [NSClassFromString(@"__NSArrayM") jr_swizzleMethod:@selector(removeObjectsInRange:) withMethod:@selector(SF_RemoveObjectsInRange_NSArrayM:) error:nil];
        [NSClassFromString(@"__NSSingleObjectArrayI") jr_swizzleMethod:@selector(objectAtIndex:) withMethod:@selector(SF_ObjectAtIndex_NSSingleObjectArrayI:) error:nil];
    });
}

- (id)SF_ObjectAtIndex_NSArray0:(NSUInteger)index
{
    @autoreleasepool {
        if (index >= self.count
            || index < 0
            || !self.count) {
            @try {
                return [self SF_ObjectAtIndex_NSArray0:index];
            } @catch (NSException *exception) {
                NSLog(@"%@", [NSThread callStackSymbols]);
                return nil;
            } @finally {
            }
        } else {
            return [self SF_ObjectAtIndex_NSArray0:index];
        }
    }
}

- (id)SF_ObjectAtIndex_NSArrayI:(NSUInteger)index
{
    @autoreleasepool {
        if (index >= self.count
            || index < 0
            || !self.count) {
            @try {
                return [self SF_ObjectAtIndex_NSArrayI:index];
            } @catch (NSException *exception) {
                NSLog(@"%@", [NSThread callStackSymbols]);
                return nil;
            } @finally {
            }
        } else {
            return [self SF_ObjectAtIndex_NSArrayI:index];
        }
    }
}

- (id)SF_ObjectAtIndex_NSArrayM:(NSUInteger)index
{
    @autoreleasepool {
        if (index >= self.count
            || index < 0
            || !self.count) {
            @try {
                return [self SF_ObjectAtIndex_NSArrayM:index];
            } @catch (NSException *exception) {
                NSLog(@"%@", [NSThread callStackSymbols]);
                return nil;
            } @finally {
            }
        } else {
            return [self SF_ObjectAtIndex_NSArrayM:index];
        }
    }
}

- (id)SF_ObjectAtIndex_NSSingleObjectArrayI:(NSUInteger)index
{
    @autoreleasepool {
        if (index >= self.count
            || index < 0
            || !self.count) {
            @try {
                return [self SF_ObjectAtIndex_NSSingleObjectArrayI:index];
            } @catch (NSException *exception) {
                NSLog(@"%@", [NSThread callStackSymbols]);
                return nil;
            } @finally {
            }
        } else {
            return [self SF_ObjectAtIndex_NSSingleObjectArrayI:index];
        }
    }
}

- (void)SF_RemoveObjectsInRange_NSArrayM:(NSRange)range
{
    @autoreleasepool {
        if (range.location < 0
            || range.location >= self.count
            || range.location + range.length >= self.count
            || !self.count) {
            @try {
                [self SF_RemoveObjectsInRange_NSArrayM:range];
            } @catch (NSException *exception) {
                NSLog(@"%@", [NSThread callStackSymbols]);
            } @finally {
            }
        } else {
            [self SF_RemoveObjectsInRange_NSArrayM:range];
        }
    }
}

@end
