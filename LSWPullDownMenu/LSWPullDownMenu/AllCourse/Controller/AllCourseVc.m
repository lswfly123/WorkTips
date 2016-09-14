//
//  AllCourseVc.m
//  LSWPullDownMenu
//
//  Created by DQaemoney on 16/9/13.
//  Copyright © 2016年 developer@aemoney.com. All rights reserved.
//

#import "AllCourseVc.h"
static NSString *const categoryID = @"categoryCell";
static NSString *const categoryDetailID = @"categoryDetailCell";
@interface AllCourseVc ()
@property (nonatomic ,strong) UITableView *categoryTableView;
@property (nonatomic ,strong) UITableView *categoryDetailTableView;
@end

@implementation AllCourseVc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self registCell];
}

- (void)registCell{

    [self.categoryTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:categoryID];
    [self.categoryDetailTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:categoryDetailID];
}
#pragma mark -- <UITableViewDelegate>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}
@end
