//
//  ImportantClass.h
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ImportantClass : NSObject {
    id delegate;
}

@property (nonatomic, retain) id delegate;

- (void)doReallyImportantStuff;

@end
