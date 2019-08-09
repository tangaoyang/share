//
//  TAYCollectionViewCell.m
//  share
//
//  Created by cinderella on 2019/8/5.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "TAYCollectionViewCell.h"

@implementation TAYCollectionViewCell

//- (instancetype)init

- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {
        //添加自己需要个子视图控件
        /*_imageView1 = [[UIImageView alloc] init];
        [self.contentView addSubview:_imageView1];*/
        
        _button = [[UIButton alloc] init];
        [self.contentView addSubview:_button];
        
    }
    return self;
    
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
  //  _imageView1.frame = self.bounds;
    _button.frame = CGRectMake(0, 0 , 90, 90);
    //[_button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];
 //   _button.backgroundColor = [UIColor colorWithWhite:0.01 alpha:0.01];
    
}


/*
- (void)layoutSubviews {
    
    [super layoutSubviews];
    _imageView.frame = self.bounds;
    
}


- (void)setImageName:(NSString *)imageName {
    
    _imageName = imageName;
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView.image = [UIImage imageNamed:imageName];
    [self addSubview:_imageView];
    
}*/

//- (void)setImageView:(UIImageView *)imageView1 {
//
//    _imageView1.frame = self.bounds;
//
//}

@end


