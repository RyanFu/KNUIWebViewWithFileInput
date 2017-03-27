//
//  ViewController.m
//  KNUIWebViewWithFileInput
//
//  Created by devzkn on 27/03/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "ViewController.h"
#import "IPOpenShopMainViewController.h"
#import "KNTestWebViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    IPOpenShopMainViewController *openShopMainViewController =[[IPOpenShopMainViewController alloc]init];
    
    KNTestWebViewController *vc = [[KNTestWebViewController alloc]init];

    [self presentViewController:vc animated:YES completion:^{
        
    }];
}



@end
