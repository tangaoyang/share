//
//  TAYFourthTableViewCell.m
//  share
//
//  Created by cinderella on 2019/7/31.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAYFourthTableViewCell.h"

@implementation TAYFourthTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.iimageView = [[UIImageView alloc] init];
    [self.contentView addSubview:_iimageView];
    
    return self;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _iimageView.frame = CGRectMake(0, 0, 414, 170);
    
}

@end
