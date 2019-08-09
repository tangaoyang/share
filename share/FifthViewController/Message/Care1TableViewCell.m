//
//  Care1TableViewCell.m
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "Care1TableViewCell.h"

@implementation Care1TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    self.label = [[UILabel alloc] init];
    [self.contentView addSubview:_label];
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    self.button = [[UIButton alloc] init];
    [self.contentView addSubview:_button];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _label.frame = CGRectMake(123, 32, 100, 20);
    _label.font = [UIFont systemFontOfSize:18];
    
    _button.frame = CGRectMake(300, 25, 70, 30);
    
    _iimageView.frame = CGRectMake(40, 10, 60, 60);
    
    
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
