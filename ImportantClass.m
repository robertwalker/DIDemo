//
//  ImportantClass.m
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ImportantClass.h"

@implementation ImportantClass

@synthesize delegate;

- (void)doReallyImportantStuff
{
    if ([delegate respondsToSelector:@selector(bar)]) {
        [delegate bar];
    }
    if ([delegate respondsToSelector:@selector(baz)]) {
        [delegate baz];
    } else {
        NSLog(@"%@ did not respond to baz", NSStringFromClass([delegate class]));
    }
}

- (void)dealloc
{
    self.delegate = nil;
    [super dealloc];
}

@end
