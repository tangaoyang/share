//
//  SecondSonViewController.m
//  share
//
//  Created by cinderella on 2019/7/30.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "SecondSonViewController.h"
#import "SecondSonTAYTableViewCell.h"

@interface SecondSonViewController ()

@end

@implementation SecondSonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 130, 414, 500) style:UITableViewStyleGrouped];
    
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [_tableView registerClass:[SecondSonTAYTableViewCell class] forCellReuseIdentifier:@"456"];
    
    _textField = [[UITextField alloc] initWithFrame:CGRectMake(5, 70, 405, 40)];
    _textField.text = @"大白";
    _textField.textColor = [UIColor blackColor];
    [self.view addSubview:_textField];
    UIImage *image = [UIImage imageNamed:@"放大镜.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(8, 0, 20, 20);
    _textField.borderStyle = UITextBorderStyleRoundedRect;
    _textField.keyboardType = UIKeyboardTypeDefault;
    _textField.leftViewMode = UITextFieldViewModeAlways;
    _textField.leftView = imageView;
    _textField.delegate = self;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SecondSonTAYTableViewCell *cell = [[SecondSonTAYTableViewCell alloc] init];
    
    if(!cell) {
        cell = [[SecondSonTAYTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"456"];
        
        cell.selectionStyle = UIActivityIndicatorViewStyleGray;
    }
    
    if(indexPath.section == 0) {
        UIImage *image = [UIImage imageNamed:@"timg.jpeg"];
        cell.showImageView.image = image;
        
        cell.nameLabel.text = @"Icon of Baymax";
        cell.nameLabel.font = [UIFont systemFontOfSize:18];
        
        cell.writerLabel.text = @"share小白";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.label.text = @"原创-UI-icon";
        cell.label.font = [UIFont systemFontOfSize:12];
        
        cell.timeLabel.text = @"15分钟前";
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        
        UIImage *image2 = [UIImage imageNamed:@"button_zan.png"];
        cell.zanImageView.image = image2;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.zanLabel.text = @"102";
        cell.zanLabel.font = [UIFont systemFontOfSize:11];
        
        cell.yanLabel.text = @"26";
        cell.yanLabel.font = [UIFont systemFontOfSize:11];
        
        cell.lineLabel.text = @"20";
        cell.lineLabel.font = [UIFont systemFontOfSize:11];
    } else {
        UIImage *image = [UIImage imageNamed:@"dabai.jpeg"];
        cell.showImageView.image = image;
        
        cell.nameLabel.text = @"每个人都需要一个大白";
        cell.nameLabel.font = [UIFont systemFontOfSize:18];
        
        cell.writerLabel.text = @"share小王";
        cell.writerLabel.font = [UIFont systemFontOfSize:15];
        
        cell.label.text = @"原创作品-摄影";
        cell.label.font = [UIFont systemFontOfSize:12];
        
        cell.timeLabel.text = @"1个月前";
        cell.timeLabel.font = [UIFont systemFontOfSize:12];
        
        UIImage *image2 = [UIImage imageNamed:@"button_zan.png"];
        cell.zanImageView.image = image2;
        
        UIImage *image3 = [UIImage imageNamed:@"button_guanzhu.png"];
        cell.yanImageView.image = image3;
        
        UIImage *image4 = [UIImage imageNamed:@"button_share.png"];
        cell.lineImageView.image = image4;
        
        cell.zanLabel.text = @"102";
        cell.zanLabel.font = [UIFont systemFontOfSize:11];
        
        cell.yanLabel.text = @"26";
        cell.yanLabel.font = [UIFont systemFontOfSize:11];
        
        cell.lineLabel.text = @"20";
        cell.lineLabel.font = [UIFont systemFontOfSize:11];
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 150;
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
