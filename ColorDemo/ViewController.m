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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // _viewBanner.backgroundColor = [UIColor flatRedColor];

    
    
    CAShapeLayer *shapeLayer = [CAShapeLayer new];
    shapeLayer.path = (__bridge CGPathRef _Nullable)([UIBezierPath bezierPathWithRoundedRect:_viewBanner.bounds cornerRadius:8.0]);
    shapeLayer.fillColor = [UIColor flatRedColor].CGColor;
    shapeLayer.shadowColor = [UIColor blackColor].CGColor;
    shapeLayer.shadowOffset = CGSizeMake(0.0, 1.0);
    shapeLayer.shadowRadius = 3;
    shapeLayer.shadowOpacity = 0.5;
    [_viewBanner.layer insertSublayer:shapeLayer atIndex:0];
    
    [_viewBanner layoutSubviews];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
