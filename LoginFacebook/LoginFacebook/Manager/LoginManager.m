//
//  LoginManager.m
//  LoginFacebook
//
//  Created by Renato Matos on 30/12/15.
//  Copyright © 2015 Studio WO. All rights reserved.
//

#import "LoginManager.h"
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>

@implementation LoginManager

+ (void) efetuarLogin:(NSInteger)tipo controller:(UIViewController *)controller {
    FBSDKLoginManager *login = [FBSDKLoginManager new];
    
    switch (tipo) {
        case 0: {
            login.loginBehavior = FBSDKLoginBehaviorNative;
            break;
        }
            
        case 1: {
            login.loginBehavior = FBSDKLoginBehaviorSystemAccount;
            break;
        }
            
        case 2: {
            login.loginBehavior = FBSDKLoginBehaviorWeb;
            break;
        }
            
        default:
            login.loginBehavior = FBSDKLoginBehaviorBrowser;
            break;
    }
    
    [login logInWithReadPermissions:@[@"public_profile"] fromViewController:controller handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
        if (error) {
            
        } else if (result.isCancelled) {
            
        } else {
            NSLog(@"Login Success");
        }
    }];
}

@end
