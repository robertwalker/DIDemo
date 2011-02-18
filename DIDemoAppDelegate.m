//
//  DIDemoAppDelegate.m
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DIDemoAppDelegate.h"
#import "ImportantClass.h"
#import "DatabaseFoo.h"
#import "PixieDustFoo.h"

@interface DIDemoAppDelegate (Private)

- (id)databaseOrMagic;

@end

@implementation DIDemoAppDelegate

- (void)awakeFromNib
{
    for (int i = 0; i < 3; i++) {
        id delegate = [[self databaseOrMagic] retain];
        ImportantClass *importantClass = [[ImportantClass alloc] init];
        [importantClass setDelegate:delegate];
        NSLog(@"Setting delegate on %@ to %@", [importantClass className], [delegate className]);
        [importantClass doReallyImportantStuff];
        [importantClass release];
        [delegate release];
    }
}

- (id)databaseOrMagic
{
    id aFoo;
    
    if (toggle) {
        toggle = 0;
        aFoo = [[[PixieDustFoo alloc] init] autorelease];
    } else {
        toggle = 1;
        aFoo = [[[DatabaseFoo alloc] init] autorelease];
    }
    
    return aFoo;
}

@end
