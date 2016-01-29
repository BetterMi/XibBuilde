//
//  MainViewController.h
//  CloudPhoneDemo
//
//  Created by HM on 16/1/27.
//  Copyright © 2016年 HM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICSDrawerController.h"

@interface MainViewController : UIViewController <ICSDrawerControllerChild, ICSDrawerControllerPresenting>

@property (nonatomic, weak)  ICSDrawerController *drawer;

@end
