//
//  LoginManager.h
//  LoginFacebook
//
//  Created by Renato Matos on 30/12/15.
//  Copyright © 2015 Studio WO. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface LoginManager : NSObject

+ (void) efetuarLogin:(NSInteger)tipo controller:(UIViewController *)controller;

@end
