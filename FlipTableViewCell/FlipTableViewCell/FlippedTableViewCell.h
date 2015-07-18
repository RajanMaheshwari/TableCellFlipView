//
//  FlippedTableViewCell.h
//  FlipTableViewCell
//
//  Created by Rajan Maheshwari on 18/07/15.
//  Copyright (c) 2015 rajanmaheshwari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlippedTableViewCell : UITableViewCell
- (IBAction)flipBack:(id)sender;
- (IBAction)flip:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *flipView;
@property (weak, nonatomic) IBOutlet UIView *normalView;
@property (weak, nonatomic) IBOutlet UIButton *flip;
@property (weak, nonatomic) IBOutlet UIButton *flipBack;
@end
