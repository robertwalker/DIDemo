//
//  DIDemoAppDelegate.m
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "DIDemoAppDelegate.h"
#import "Fooing.h"
#import "DatabaseFoo.h"
#import "PixieDustFoo.h"
#import "ImportantClass.h"

@interface DIDemoAppDelegate (Private)

- (NSObject <Fooing>*)databaseOrMagic;

@end

@implementation DIDemoAppDelegate

- (void)awakeFromNib
{
    for (int i = 0; i < 3; i++) {
        id injectedClass = [self databaseOrMagic];
        ImportantClass *importantClass = [[ImportantClass alloc] initWithFoo:injectedClass];
        NSLog(@"Injecting instance of %@ into %@", NSStringFromClass([injectedClass class]), NSStringFromClass([importantClass class]));
        [importantClass doReallyImportantStuff];
        [importantClass release];
    }
}

- (NSObject <Fooing>*)databaseOrMagic
{
    NSObject <Fooing> *aFoo;
    
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
