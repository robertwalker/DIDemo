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
        id injectedClass = [self databaseOrMagic];
        ImportantClass *importantClass = [[ImportantClass alloc] initWithFoo:injectedClass];
        NSLog(@"Injecting instance of %@ into %@", [injectedClass className], [importantClass className]);
        [importantClass doReallyImportantStuff];
        [importantClass release];
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
