//
//  SecondViewController.m
//  SampleSuccession2
//
//  Created by tetsuco on 11/09/13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

//--------------------------------------------------
// getter, setterの設定
//--------------------------------------------------
@synthesize dbClass = _dbClass;


//--------------------------------------------------
// init
//--------------------------------------------------
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// DBClass
- (id)initDBClassValue:(DBClass *)db
{
    self = [super init];
    if (self) {
        self.dbClass = db;
    }
    return self;
}


- (void)dealloc
{
    [_dbClass release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // フレームサイズ
    self.view.frame = CGRectMake(50, 50, 220, 360);
    
    // ビューの背景色
    self.view.backgroundColor = [UIColor yellowColor];
    
    // ラベル
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, 100, 40);
    label.backgroundColor = [UIColor clearColor];                      // 背景色
    label.textColor = [UIColor blackColor];                            // テキストの色
    label.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];    // フォント
    label.text = @"SecondView";                                         // 表示内容
    [self.view addSubview:label];
    [label release];
    
    
    // ラベル - DBClass: str
    UILabel *labelStr = [[UILabel alloc] init];
    labelStr.frame = CGRectMake(10, 100, 200, 40);
    labelStr.backgroundColor = [UIColor darkGrayColor];                   // 背景色
    labelStr.textColor = [UIColor whiteColor];                            // テキストの色
    labelStr.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];    // フォント
    labelStr.textAlignment = UITextAlignmentCenter;                       // 中央寄せ
    labelStr.text = self.dbClass.str;                                     // 表示内容
    [self.view addSubview:labelStr];
    [labelStr release];
    
    // ラベル - DBClass: num
    UILabel *labelNum = [[UILabel alloc] init];
    labelNum.frame = CGRectMake(10, 230, 200, 40);
    labelNum.backgroundColor = [UIColor darkGrayColor];                        // 背景色
    labelNum.textColor = [UIColor whiteColor];                                 // テキストの色
    labelNum.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];         // フォント
    labelNum.textAlignment = UITextAlignmentCenter;                            // 中央寄せ
    labelNum.text = [[NSString alloc] initWithFormat:@"%d", self.dbClass.num]; // 表示内容
    [self.view addSubview:labelNum];
    [labelNum release];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
