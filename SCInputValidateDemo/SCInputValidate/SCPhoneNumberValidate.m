//
//  SCPhoneNumberValidate.m
//  BSProduct(OC)
//
//  Created by Kaito on 2018/1/11.
//  Copyright © 2018年 abon. All rights reserved.
//

#import "SCPhoneNumberValidate.h"

@implementation SCPhoneNumberValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    
    if(textField.text.length == 0) {
        self.attributeInputStr = PhoneNumEmpty;
        return NO;
    }

    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^1(3[0-9]|4[57]|5[0-35-9]|8[0-9]|7[0678])\\d{8}$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [[textField text] length])];
    
    if (numberOfMatches == 0) {
        self.attributeInputStr = PhoneNumError;
    } else {
        self.attributeInputStr = nil;
    }
    return self.attributeInputStr == nil ? YES : NO;
}

@end
