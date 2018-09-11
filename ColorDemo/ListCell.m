//
//  ListCell.m
//  ColorDemo
//
//  Created by iCoderz_09 on 11/09/18.
//  Copyright © 2018 iCoderz_09. All rights reserved.
//

#import "ListCell.h"

@implementation ListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    _viewContainerBack.layer.masksToBounds = YES;
    _viewContainerBack.layer.cornerRadius = 8;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
