//
//  RecommendViewController.m
//  share
//
//  Created by cinderella on 2019/7/31.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "RecommendViewController.h"
#import "Recommend1TableViewCell.h"
#import "Recommend2TableViewCell.h"
#import "Recommend3TableViewCell.h"

@interface RecommendViewController ()

@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 50) style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
    [_tableView registerClass: [Recommend1TableViewCell class] forCellReuseIdentifier:@"111"];
    [_tableView registerClass: [Recommend2TableViewCell class] forCellReuseIdentifier:@"222"];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *showNameArr = @[@"匆匆那年", @"国外画册欣赏", @"collection扁平设计", @"字体故事", @"版本整理术：高效解决多风格要求"];
    NSArray *writerArr = @[@"share小吕", @"share小王", @"share小吕", @"share小律", @"share小王"];
    NSArray *contentArr = @[@"原创-摄影-联系习作", @"平面设计-画册设计", @"平面设计-海报设计", @"设计文章-经验-设计观点", @"平面设计-雕塑设计"];
    NSArray *timeArr = @[@"10分钟前", @"16分钟前", @"17分钟前", @"45分钟前", @"1小时前"];
    NSArray *imageArr = @[@"list_img1.png", @"list_img2.png", @"list_img3.png", @"note_img3.png", @"note_img4.png"];
    
    if(indexPath.section == 0 || indexPath.section == 3) {
        
        Recommend1TableViewCell *cell = [[Recommend1TableViewCell alloc] init];
        
        cell.nameLabel.text = showNameArr[indexPath.section];
        cell.writerLabel.text = writerArr[indexPath.section];
        cell.timeLabel.text = timeArr[indexPath.section];
        cell.contentLabel.text = contentArr[indexPath.section];
        cell.zanLabel.text = @"45";
        cell.yanLabel.text = @"102";
        cell.lineLabel.text = @"20";
        cell.zanImageView.image = [UIImage imageNamed:@"button_zan.png"];
        cell.yanImageView.image = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.lineImageView.image = [UIImage imageNamed:@"button_share.png"];
        cell.showImageView.image = [UIImage imageNamed:imageArr[indexPath.section]];
        
        return cell;
        
    } else if (indexPath.section == 4) {
        Recommend3TableViewCell *cell = [[Recommend3TableViewCell alloc] init];
        
        cell.nameLabel.text = showNameArr[indexPath.section];
        cell.writerLabel.text = writerArr[indexPath.section];
        cell.timeLabel.text = timeArr[indexPath.section];
        cell.contentLabel.text = contentArr[indexPath.section];
        cell.zanLabel.text = @"45";
        cell.yanLabel.text = @"102";
        cell.lineLabel.text = @"20";
        cell.zanImageView.image = [UIImage imageNamed:@"button_zan.png"];
        cell.yanImageView.image = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.lineImageView.image = [UIImage imageNamed:@"button_share.png"];
        cell.showImageView.image = [UIImage imageNamed:imageArr[indexPath.section]];
        
        return cell;
    
    } else {
        
        Recommend2TableViewCell *cell = [[Recommend2TableViewCell alloc] init];
        
        cell.nameLabel.text = showNameArr[indexPath.section];
        cell.writerLabel.text = writerArr[indexPath.section];
        cell.timeLabel.text = timeArr[indexPath.section];
        cell.contentLabel.text = contentArr[indexPath.section];
        cell.zanLabel.text = @"45";
        cell.yanLabel.text = @"102";
        cell.lineLabel.text = @"20";
        cell.zanImageView.image = [UIImage imageNamed:@"button_zan.png"];
        cell.yanImageView.image = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.lineImageView.image = [UIImage imageNamed:@"button_share.png"];
        cell.showImageView.image = [UIImage imageNamed:imageArr[indexPath.section]];
        
        return cell;
        
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 0) {
        return @"";
    } else {
        return @" ";
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
