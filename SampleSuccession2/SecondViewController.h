//
//  SecondViewController.h
//  SampleSuccession2
//
//  Created by tetsuco on 11/09/13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBClass.h"


@interface SecondViewController : UIViewController {
    
}

@property (nonatomic,retain) DBClass *dbClass;

// init
- (id)initDBClassValue:(DBClass *)db;

@end
