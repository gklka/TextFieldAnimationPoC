//
//  ViewController.h
//  TextFieldAnimationPoC
//
//  Created by GK on 2016.02.15..
//  Copyright © 2016. GKSoftware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *fieldOne;
@property (weak, nonatomic) IBOutlet UITextField *fieldTwo;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *boxBottomConstraint;

@end

