//
//  SecretViewController.h
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecretViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>

@property UITableView *tableView;


@end

NS_ASSUME_NONNULL_END
