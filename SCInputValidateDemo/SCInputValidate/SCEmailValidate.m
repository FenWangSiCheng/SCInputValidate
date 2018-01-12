//
//  SCEmailValidate.m
//  BSProduct(OC)
//
//  Created by Kaito on 2018/1/12.
//  Copyright © 2018年 Kaito. All rights reserved.
//

#import "SCEmailValidate.h"

@implementation SCEmailValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    
    if(textField.text.length == 0) {
        self.attributeInputStr = EmailEmpty;
        return NO;
    }
    
    NSString *emailCheck = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *email = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",emailCheck];
    
    if ([email evaluateWithObject:textField.text]) {
        self.attributeInputStr = nil;
        
    } else {
        self.attributeInputStr = EmailError;
    }
    return self.attributeInputStr == nil ? YES : NO;
}

@end
