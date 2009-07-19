//
//  ImportantClass.h
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Fooing.h"

@interface ImportantClass : NSObject {
    NSObject <Fooing> *foo;
}

- (id)initWithFoo:(NSObject <Fooing>*)aFoo;
- (void)doReallyImportantStuff;

@end
