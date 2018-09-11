//
//  ViewController.m
//  ColorDemo
//
//  Created by iCoderz_09 on 05/09/18.
//  Copyright © 2018 iCoderz_09. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Chameleon.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *viewBanner;
@property (weak, nonatomic) IBOutlet UIView *viewContainer;
@property (weak, nonatomic) IBOutlet UIView *viewDetail;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _viewBanner.backgroundColor = [UIColor clearColor];
    _viewContainer.backgroundColor = [UIColor flatRedColor];

    _viewContainer.layer.masksToBounds = YES;
    _viewContainer.layer.cornerRadius = 8;
    
    _viewDetail.layer.masksToBounds = YES;
    _viewDetail.layer.cornerRadius = 8;
    
    _viewBanner.layer.masksToBounds = NO;
    _viewBanner.layer.shadowColor = UIColor.grayColor.CGColor;
    _viewBanner.layer.shadowOffset = CGSizeMake(0.0, 2.0);
    _viewBanner.layer.shadowOpacity = 0.8;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
