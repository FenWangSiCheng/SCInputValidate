//
//  UITextField+SCValidate.h
//  SCInputValidateDemo
//
//  Created by abon on 2018/1/12.
//  Copyright © 2018年 kaito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SCInputValidate.h"
#import "SCPhoneNumberValidate.h"
#import "SCBankCardValidate.h"
#import "SCPwdValidate.h"
#import "SCidentifieCardValidate.h"
#import "SCEmailValidate.h"
@interface UITextField (SCValidate)

/**
 输入验证属性
 */
@property (nonatomic, strong) SCInputValidate *inputValidate;

/**
 验证方法
 @return BOOl
 */
- (BOOL)validate;

@end
