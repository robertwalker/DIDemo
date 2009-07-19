//
//  ImportantClass.m
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ImportantClass.h"

@implementation ImportantClass

- (id)initWithFoo:(id)aFoo
{
    if ( self = [super init] ) {
        foo = [aFoo retain];
    }
    return self;
}

- (void)doReallyImportantStuff
{
    if ([foo respondsToSelector:@selector(bar)]) {
        [foo performSelector:@selector(bar)];
    }
    if ([foo respondsToSelector:@selector(baz)]) {
        [foo performSelector:@selector(baz)];
    } else {
        NSLog(@"%@ did not respond to baz", [foo className]);
    }
}

- (void)dealloc
{
    [foo release];
    [super dealloc];
}

@end
