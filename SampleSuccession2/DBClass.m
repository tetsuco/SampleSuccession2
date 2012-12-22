//
//  DBClass.m
//  SampleSuccession2
//
//  Created by tetsuco on 11/09/13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DBClass.h"


@implementation DBClass

@synthesize str = _str;
@synthesize num = _num;

- (void)dealloc
{
    [_str release];
    
    [super dealloc];
}

@end
