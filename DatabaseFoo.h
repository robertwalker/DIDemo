//
//  DatabaseFoo.h
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "ImportantClass.h"

@interface DatabaseFoo : NSObject <ImportantClassDelegate>

- (void)bar;
- (void)baz;

@end
