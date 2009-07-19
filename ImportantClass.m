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
        [delegate performSelector:@selector(bar)];
    }
    if ([delegate respondsToSelector:@selector(baz)]) {
        [delegate performSelector:@selector(baz)];
    } else {
        NSLog(@"%@ did not respond to baz", [delegate className]);
    }
}

- (void)dealloc
{
    [delegate release];
    [super dealloc];
}

@end
