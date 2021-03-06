//
//  SetTableViewCell.m
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "SetTableViewCell.h"

@implementation SetTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style  reuseIdentifier:reuseIdentifier];
    
    self.nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:_nameLabel];
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    _nameLabel.frame = CGRectMake(42, 17, 100, 20);
    _nameLabel.font = [UIFont systemFontOfSize:17];
    
    _iimageView.frame = CGRectMake(280, 17, 15, 15);
    
    
}

@end
