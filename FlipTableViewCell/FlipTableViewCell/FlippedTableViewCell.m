//
//  FlippedTableViewCell.m
//  FlipTableViewCell
//
//  Created by Rajan Maheshwari on 18/07/15.
//  Copyright (c) 2015 rajanmaheshwari. All rights reserved.
//

#import "FlippedTableViewCell.h"

@implementation FlippedTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)flipBack:(id)sender {
    [UIView transitionWithView:self.contentView duration:0.6 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
        [self.contentView insertSubview:_normalView aboveSubview:_flipView];
    } completion:^(BOOL finished) {
        
    }];

}

- (IBAction)flip:(id)sender {
    [UIView transitionWithView:self.contentView duration:0.6 options:UIViewAnimationOptionTransitionFlipFromRight animations:^{
        [self.contentView insertSubview:_flipView aboveSubview:_normalView];
    } completion:^(BOOL finished) {
        
    }];
}

@end
