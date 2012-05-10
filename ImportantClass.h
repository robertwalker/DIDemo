//
//  ImportantClass.h
//  DIDemo
//
//  Created by Robert Walker on 3/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@protocol ImportantClassDelegate;

@interface ImportantClass : NSObject

@property (nonatomic, assign) id<ImportantClassDelegate> delegate;

- (void)doReallyImportantStuff;

@end

@protocol ImportantClassDelegate <NSObject>

- (void)bar;

@optional
- (void)baz;

@end
