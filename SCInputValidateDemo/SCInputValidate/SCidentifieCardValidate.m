//
//  SCidentifieCardValidate.m
//  省份证验证
//
//  Created by Kaito on 2018/1/12.
//  Copyright © 2018年 Kaito. All rights reserved.
//

#import "SCidentifieCardValidate.h"

@implementation SCidentifieCardValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    
    if(textField.text.length == 0) {
        self.attributeInputStr = IdentifieCardEmpty;
        return NO;
    }
    
    NSString *regex = @"^(\\d{14}|\\d{17})(\\d|[xX])$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    
    if ([identityCardPredicate evaluateWithObject:textField.text]) {
        self.attributeInputStr = nil;
        
    } else {
        self.attributeInputStr = IdentifieCardError;
    }
    return self.attributeInputStr == nil ? YES : NO;
}

@end
