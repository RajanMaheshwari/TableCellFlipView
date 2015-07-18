//
//  ViewController.m
//  FlipTableViewCell
//
//  Created by Rajan Maheshwari on 18/07/15.
//  Copyright (c) 2015 rajanmaheshwari. All rights reserved.
//

#import "ViewController.h"
#import "FlippedTableViewCell.h"
#import "AppDelegate.h"
@interface ViewController ()
{
    AppDelegate* appDelegate;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    appDelegate=(AppDelegate*)[UIApplication sharedApplication].delegate;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    appDelegate.viewMaintainedDict=[[NSMutableDictionary alloc]init];

    for (int i=0; i<20; i++) {
        
        [appDelegate.viewMaintainedDict setObject:@"0" forKey:[NSString stringWithFormat:@"%d",i]];
    }
    return 20;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FlippedTableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"FlippedTableViewCell"];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    cell.flip.tag=indexPath.row;
    cell.flipBack.tag=indexPath.row;
    
    if([[appDelegate.viewMaintainedDict objectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.row]] isEqualToString:@"1"])
    {
        [cell.contentView insertSubview:cell.flipView aboveSubview:cell.normalView];
    }
    else if([[appDelegate.viewMaintainedDict objectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.row]] isEqualToString:@"0"])
    {
        [cell.contentView insertSubview:cell.normalView aboveSubview:cell.flipView];
        
    }
    
    
    return cell;

}

@end
