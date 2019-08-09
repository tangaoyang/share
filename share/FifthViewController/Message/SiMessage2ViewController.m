//
//  SiMessage2ViewController.m
//  share
//
//  Created by cinderella on 2019/8/1.
//  Copyright © 2019 cinderella. All rights reserved.
//

#import "SiMessage2ViewController.h"

@interface SiMessage2ViewController ()

@end

@implementation SiMessage2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"shareLan.jpg"]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    [self.view addSubview:imageView];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
