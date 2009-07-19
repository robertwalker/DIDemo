//
//  ImportantClass.h
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

// An informal protocol
@interface NSObject (InformalFooing)
- (void)bar;
- (void)baz;
@end

@interface ImportantClass : NSObject {
    id foo;
}

- (id)initWithFoo:(id)aFoo;
- (void)doReallyImportantStuff;

@end
