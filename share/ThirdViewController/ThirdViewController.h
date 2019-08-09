//
//  ThirdViewController.h
//  share
//
//  Created by cinderella on 2019/7/29.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : UIViewController
<
UIScrollViewDelegate,
UITableViewDelegate,
UITableViewDataSource
>

@property UIScrollView *scrollView;
@property UITableView *tableView1;
@property UITableView *tableView2;
@property UITableView *tableView3;
@property UISegmentedControl *segmentedControl;

@end

NS_ASSUME_NONNULL_END
