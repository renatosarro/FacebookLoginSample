//
//  ViewController.m
//  LoginFacebook
//
//  Created by Renato Matos on 30/12/15.
//  Copyright © 2015 Studio WO. All rights reserved.
//

#import "ViewController.h"
#import "LoginManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)login:(id)sender {
    [LoginManager efetuarLogin:((UIButton *)sender).tag controller:self];
}

@end
