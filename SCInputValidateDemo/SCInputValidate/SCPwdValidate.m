//
//  SCPwdValidate.m
//  BSProduct(OC)
//
//  Created by Kaito on 2018/1/11.
//  Copyright © 2018年 Kaito. All rights reserved.
//

#import "SCPwdValidate.h"

@implementation SCPwdValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    
    if(textField.text.length == 0) {
        self.attributeInputStr = PwdEmpty;
        return NO;
    }
    
    NSString *passRegex = @"[a-zA-Z0-9]{6,18}";
    NSPredicate *passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passRegex];;
    
    if ([passwordTest evaluateWithObject:textField.text]) {
         self.attributeInputStr = nil;
       
    } else {
        self.attributeInputStr = PwdError;
    }
    return self.attributeInputStr == nil ? YES : NO;
}

@end
