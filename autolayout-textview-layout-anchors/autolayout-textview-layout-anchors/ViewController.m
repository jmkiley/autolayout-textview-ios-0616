//
//  ViewController.m
//  autolayout-textview-layout-anchors
//
//  Created by Jordan Kiley on 6/27/16.
//  Copyright © 2016 Jordan Kiley. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *rightButton;
@property (strong, nonatomic) IBOutlet UIButton *leftButton;
@property (strong, nonatomic) IBOutlet UITextView *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Remove settings
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view removeConstraint:self.view.constraints];
    self.rightButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.leftButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.textField.translatesAutoresizingMaskIntoConstraints= NO;

    
    //set up new constraints
    [self.textField.rightAnchor constraintEqualToAnchor:self.textField.rightAnchor constant:-10].active = YES;
    [self.textField.leftAnchor constraintEqualToAnchor:self.textField.leftAnchor constant:10].active = YES;
    [self.textField.topAnchor constraintEqualToAnchor:self.textField.topAnchor constant:20].active = YES;
    
    
    [self.leftButton.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:10].active = YES;
    [self.leftButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.leftButton.topAnchor constraintEqualToAnchor:self.textField.bottomAnchor constant:10].active = YES;
    
    [self.rightButton.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-10].active = YES;
    [self.rightButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-10].active = YES;
    [self.rightButton.topAnchor constraintEqualToAnchor:self.textField.bottomAnchor constant:10].active= YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
