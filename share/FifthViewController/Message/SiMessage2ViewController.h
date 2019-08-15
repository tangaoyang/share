//
//  SiMessage2ViewController.h
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SiMessage2ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource,
UITextFieldDelegate
>
@property UITextField *textField;
@property UITableView *tableView;
@property NSMutableArray *messageArr;
@property (nonatomic) NSNumber *rowHeight;
@property NSMutableArray *rowHeightArr;


@end

NS_ASSUME_NONNULL_END
