//
//  ViewController.m
//  TextFieldAnimationPoC
//
//  Created by GK on 2016.02.15..
//  Copyright © 2016. GKSoftware. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Keyboard notifications
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Keyboard

- (void)keyboardWillHide:(NSNotification *)sender
{
    self.boxBottomConstraint.constant = 0;
    
    [self.view layoutIfNeeded];
}

- (void)keyboardWillShow:(NSNotification *)sender
{
    CGRect frame = [sender.userInfo[UIKeyboardFrameEndUserInfoKey] CGRectValue];
    CGRect newFrame = [self.view convertRect:frame fromView:[[UIApplication sharedApplication] delegate].window];
    self.boxBottomConstraint.constant = CGRectGetHeight(newFrame);
    
    [self.view layoutIfNeeded];
}

@end
