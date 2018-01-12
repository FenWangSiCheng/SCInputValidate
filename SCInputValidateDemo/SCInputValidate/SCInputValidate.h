//
//  SCInputValidate.h
//  BSProduct(OC)
//
//  Created by Kaito on 2018/1/11.
//  Copyright © 2018年 kaito. All rights reserved.
//

#import <UIKit/UIKit.h>

//错误提示
static NSString * const PhoneNumEmpty = @"电话号码不能为空";
static NSString * const PhoneNumError = @"请输入有效的电话号码";
static NSString * const BankCardEmpty = @"银行卡号不能为空";
static NSString * const BankCardError = @"请输入有效的银行卡号码";
static NSString * const PwdEmpty = @"密码不能为空";
static NSString * const PwdError = @"请输入6~18位数字密码组合";
static NSString * const IdentifieCardEmpty = @"身份证不能为空";
static NSString * const IdentifieCardError = @"请输入有效省份证号码";
static NSString * const EmailEmpty = @"邮箱不能为空";
static NSString * const EmailError = @"请输入正确的邮箱格式";

@interface SCInputValidate : NSObject

- (BOOL)validateInputTextField:(UITextField *)textField;

// 输出的属性字符串
@property (nonatomic, strong) NSString *attributeInputStr;

@end
