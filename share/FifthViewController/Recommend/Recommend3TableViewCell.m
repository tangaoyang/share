//
//  Recommend3TableViewCell.m
//  share
//
//  Created by cinderella on 2019/7/31.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "Recommend3TableViewCell.h"

@implementation Recommend3TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.writerLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_writerLabel];
    
    self.contentLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_contentLabel];
    
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_timeLabel];
    
    self.zanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_zanLabel];
    
    self.yanLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_yanLabel];
    
    self.lineLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_lineLabel];
    
    self.showImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_showImageView];
    
    self.zanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_zanImageView];
    
    self.yanImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_yanImageView];
    
    self.lineImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_lineImageView];
    
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _writerLabel.frame = CGRectMake(328, 52, 100, 20);
    _writerLabel.font = [UIFont systemFontOfSize:13];
    
    _contentLabel.frame = CGRectMake(220, 70, 200, 15);
    _contentLabel.font = [UIFont systemFontOfSize:13];
    
    _timeLabel.frame = CGRectMake(220, 88, 200, 15);
    _timeLabel.font = [UIFont systemFontOfSize:13];
    
    _nameLabel.frame = CGRectMake(220, 0, 180, 60);
    _nameLabel.font = [UIFont systemFontOfSize:19];
    _nameLabel.numberOfLines = 0;
    
    
    _zanLabel.frame = CGRectMake(246, 110, 30, 20);
    _zanLabel.font = [UIFont systemFontOfSize:12];
    _zanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _yanLabel.frame = CGRectMake(303, 110, 30, 20);
    _yanLabel.font = [UIFont systemFontOfSize:12];
    _yanLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    
    _lineLabel.frame = CGRectMake(363, 110, 30, 20);
    _lineLabel.font = [UIFont systemFontOfSize:12];
    _lineLabel.textColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    
    _showImageView.frame = CGRectMake(0, 0, 200, 140);
    
    _zanImageView.frame = CGRectMake(220, 110, 20, 15);
    
    _yanImageView.frame = CGRectMake(280, 110, 20, 15);
    
    _lineImageView.frame = CGRectMake(340, 110, 20, 15);
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
