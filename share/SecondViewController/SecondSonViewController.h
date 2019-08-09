//
//  SecondSonViewController.h
//  share
//
//  Created by cinderella on 2019/7/30.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondSonViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource,
UITextFieldDelegate
>

@property UITextField *textField;
@property UITableView *tableView;

@end

NS_ASSUME_NONNULL_END
