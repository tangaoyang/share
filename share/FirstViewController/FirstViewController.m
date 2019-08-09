//
//  FirstViewController.m
//  share
//
//  Created by cinderella on 2019/7/29.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "FirstViewController.h"
#import "TAYTableViewCell.h"
#import "ScrollerTableViewCell.h"
#import "FirstSonViewController.h"
#import "TAY2TableViewCell.h"
#import "TAY3TableViewCell.h"

@interface FirstViewController ()

@property TAYTableViewCell *cell;
@property NSMutableArray *zanArr;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem* tarBarItem = [[UITabBarItem alloc] init];
    tarBarItem.image = [[UIImage imageNamed:@"button1_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tarBarItem.selectedImage = [[UIImage imageNamed:@"button1_pressed.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tarBarItem;
    
    self.navigationItem.title = @"SHARE";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 697) style:UITableViewStylePlain];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[TAYTableViewCell class] forCellReuseIdentifier:@"459"];
    [_tableView registerClass:[TAY2TableViewCell class] forCellReuseIdentifier:@"456"];
    [_tableView registerClass:[ScrollerTableViewCell class] forCellReuseIdentifier:@"123"];
    [_tableView registerClass:[TAY3TableViewCell class] forCellReuseIdentifier:@"333"];
    
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

//懒加载实现背景View
- (UIView*)bgView {
    if (self.view == nil) {
        self.view = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.navigationController.navigationBar.frame.size.width, self.navigationController.navigationBar.frame.size.height + 20)];
        [self.navigationController.view insertSubview:self.view belowSubview:self.navigationController.navigationBar];
        
    }
    return self.view;
}

//监听scrollView滑动
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView == self.tableView) {
        CGFloat offsetY = scrollView.contentOffset.y;
        [self setNavigationBarColorWithOffsetY:offsetY];
    }
}

// 界面滑动时导航栏随偏移量 实时变化
- (void)setNavigationBarColorWithOffsetY:(CGFloat)offsetY {
    UIImageView *backView = self.navigationController.navigationBar.subviews[0];
    if (offsetY <= 0) {
        backView.alpha = 1;
    } else if (offsetY > 0 && offsetY < 200) {
        backView.alpha = 1 - (offsetY / 200);
    } else if (offsetY >= 200 ) {
        backView.alpha = 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if(indexPath.section == 0) {
        
        ScrollerTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"123" forIndexPath:indexPath];
        
        
        return cell;
    } else if(indexPath.section == 1){
        
        TAY2TableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"456"forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img1.png"];
        cell2.showImageView.image = image1;
       /*// UIImageView *imageview1 = [[UIImageView alloc] initWithImage:image1];
        [cell2.button2 setImage:image1 forState:UIControlStateNormal];
        [cell2.button2 addTarget:self action:@selector(pressImage) forControlEvents:UIControlEventTouchDown];
        //cell.navigationItem.leftBarButtonItem = cell.barButtonItem ;*/
        /*
        UIImage *image2 = [UIImage imageNamed:@"button_zan.png"];
        [cell2.button setImage:image2 forState:UIControlStateNormal];
        [cell2.button setTitle:@"102" forState:UIControlStateNormal];
        [cell2.button addTarget:self action:@selector(pressZan:) forControlEvents:UIControlEventTouchDown];*/
    
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell2.yanImageView.image = image3;
    
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell2.lineImageView.image = image4;
    
        cell2.nameLabel.text = @"假日";
        cell2.nameLabel.font = [UIFont systemFontOfSize:18];
    
        cell2.writerLabel.text = @"share小白";
        cell2.writerLabel.font = [UIFont systemFontOfSize:15];
   
        cell2.contentLabel1.text = @"原创-插画-练习习作";
        cell2.contentLabel1.font = [UIFont systemFontOfSize:12];
        
        cell2.contentLabel2.text = @"15分钟前";
        cell2.contentLabel2.font = [UIFont systemFontOfSize:12];
    
        cell2.yanLabel.text = @"26";
        cell2.yanLabel.font = [UIFont systemFontOfSize:12];
        cell2.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
        cell2.lineLabel.text = @"20";
        cell2.lineLabel.font = [UIFont systemFontOfSize:12];
        cell2.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell2;
        
        
    } else if (indexPath.section == 2) {
        
        TAYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"459" forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img2.png"];
        cell.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.nameLabel.text = @"国外画册欣赏";
        cell.nameLabel.font = [UIFont systemFontOfSize:18];
        
        cell.writerLabel.text = @"share小王";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.contentLabel1.text = @"平面设计——画册设计";
        cell.contentLabel1.font = [UIFont systemFontOfSize:12];
        
        cell.contentLabel2.text = @"16分钟前";
        cell.contentLabel2.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"26";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.lineLabel.text = @"20";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell;
        
    } else if (indexPath.section == 3) {
        
         TAYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"459" forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img3.png"];
        cell.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.nameLabel.text = @"collection扁平设计";
        cell.nameLabel.font = [UIFont systemFontOfSize:18];
        
        cell.writerLabel.text = @"share小吕";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.contentLabel1.text = @"平面设计——海报设计";
        cell.contentLabel1.font = [UIFont systemFontOfSize:12];
        
        cell.contentLabel2.text = @"17分钟前";
        cell.contentLabel2.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"105";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.lineLabel.text = @"20";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        return cell;
        
    } else {
        
         TAY3TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"333" forIndexPath:indexPath];
        
        UIImage *image1 = [UIImage imageNamed: @"list_img4.png"];
        cell.showImageView.image = image1;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.nameLabel.text = @"版式整理术：高效解决多风格要求";
        cell.nameLabel.numberOfLines = 0;
        cell.nameLabel.font = [UIFont systemFontOfSize:17];
        
        cell.writerLabel.text = @"share小王";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.contentLabel.text = @"平面设计——样式设计";
        cell.contentLabel.font = [UIFont systemFontOfSize:12];
        
        cell.timeLabel.text = @"18分钟前";
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        
        cell.yanLabel.text = @"654";
        cell.yanLabel.font = [UIFont systemFontOfSize:12];
        cell.yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
        cell.lineLabel.text = @"23";
        cell.lineLabel.font = [UIFont systemFontOfSize:12];
        cell.lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
        
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
    if(indexPath.section == 0) {
        return 175;
    } else {
        return 140;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 15;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @" ";
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 1 ){
        FirstSonViewController *jiari = [[FirstSonViewController alloc] init];
        [self.navigationController pushViewController:jiari animated:NO];
        
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    }
}
/*
- (void)pressZan:(TAY2TableViewCell *)cell {
    NSLog(@"456");
    [cell.button setTitle:@"103" forState:UIControlStateNormal];
    [cell.button addTarget:self action:@selector(pressZaned:) forControlEvents:UIControlEventTouchDown];
}

- (void)pressZaned:(TAY2TableViewCell *)cell {
    NSLog(@"458");
    [cell.button setTitle:@"102" forState:UIControlStateNormal];
    [cell.button addTarget:self action:@selector(pressZan:) forControlEvents:UIControlEventTouchDown];
}*/



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
