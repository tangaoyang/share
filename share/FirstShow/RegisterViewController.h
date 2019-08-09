//
//  RegisterViewController.h
//  share
//
//  Created by cinderella on 2019/7/29.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RegisterViewController : UIViewController
<
UITextFieldDelegate
>

typedef void (^ReturnTextBlock)(NSString *showText);
typedef void (^ReturnTextBlock2)(NSString *showText);
@property UITextField *passTextField;
@property UITextField *userTextField;
@property UITextField *massTextField;
@property UIButton *btn;
@property ReturnTextBlock returnTextBlock;
@property ReturnTextBlock2 returnTextBlock2;
-(void)returnText:(ReturnTextBlock)block;
-(void)returnText2:(ReturnTextBlock2)block;

@end

NS_ASSUME_NONNULL_END
