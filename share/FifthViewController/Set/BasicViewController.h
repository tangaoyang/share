//
//  BasicViewController.h
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BasicViewController : UIViewController
<
UITableViewDataSource,
UITableViewDelegate
>

@property UITableView *tableview;

@end

NS_ASSUME_NONNULL_END
