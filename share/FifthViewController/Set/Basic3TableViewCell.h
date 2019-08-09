//
//  Basic3TableViewCell.h
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Basic3TableViewCell : UITableViewCell

@property UILabel *nameLabel;
@property UILabel *manLabel;
@property UILabel *womanLabel;
@property UIButton *manButton;
@property UIButton *womanButton;
@property BOOL man;

@end

NS_ASSUME_NONNULL_END
