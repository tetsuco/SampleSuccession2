//
//  FirstViewController.m
//  SampleSuccession2
//
//  Created by tetsuco on 11/09/13.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
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
    
    // ナビゲーションバーを非表示にする
    [self.navigationController setNavigationBarHidden:YES animated:NO];
    
    // ビューの背景色
    self.view.backgroundColor = [UIColor blueColor];
    
    // ラベル
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 0, 100, 40);
    label.backgroundColor = [UIColor clearColor];                      // 背景色
    label.textColor = [UIColor blackColor];                            // テキストの色
    label.font = [UIFont systemFontOfSize:[UIFont systemFontSize]];    // フォント
    label.text = @"FirstView";                                         // 表示内容
    [self.view addSubview:label];
    [label release];
    
    
    // DBClassを初期化
    DBClass *dbClass = [[DBClass alloc] init];
    
    // 値設定
    dbClass.str = @"あいうえお";
    dbClass.num = 12345;
    
    // SecondViewControllerを初期化
    SecondViewController *secondViewController;
    secondViewController = [[SecondViewController alloc] initDBClassValue:dbClass];
    
    // SecondViewController を表示
    [self.view addSubview:secondViewController.view];
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
