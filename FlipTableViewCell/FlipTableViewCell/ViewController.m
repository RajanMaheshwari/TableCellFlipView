//
//  ViewController.m
//  FlipTableViewCell
//
//  Created by Rajan Maheshwari on 18/07/15.
//  Copyright (c) 2015 rajanmaheshwari. All rights reserved.
//

#import "ViewController.h"
#import "FlippedTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FlippedTableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:@"FlippedTableViewCell"];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;

}

@end
