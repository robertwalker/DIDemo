//
//  ImportantClass.m
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "ImportantClass.h"
#import "Fooing.h"

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
        [foo bar];
    }
    if ([foo respondsToSelector:@selector(baz)]) {
        [foo baz];
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
