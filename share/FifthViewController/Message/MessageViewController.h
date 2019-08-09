//
//  MessageViewController.h
//  share
//
//  Created by cinderella on 2019/7/31.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MessageViewController : UIViewController
<
UITableViewDataSource,
UITableViewDelegate
>

@property UITableView *tableView;

@end


NS_ASSUME_NONNULL_END
