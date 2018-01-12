//
//  SCBankCardValidate.m
//  BSProduct(OC)
//
//  Created by Kaito on 2018/1/11.
//  Copyright © 2018年 Kaito. All rights reserved.
//

#import "SCBankCardValidate.h"

@implementation SCBankCardValidate

- (BOOL)validateInputTextField:(UITextField *)textField {
    
    if(textField.text.length == 0) {
        self.attributeInputStr = BankCardEmpty;
        return NO;
    }
    
    NSString *digitsOnly = @"";
    char c;
    for (int i = 0; i < textField.text.length; i++)
    {
        c = [textField.text characterAtIndex:i];
        if (isdigit(c))
        {
            digitsOnly =[digitsOnly stringByAppendingFormat:@"%c",c];
        }
    }
    int sum = 0;
    int digit = 0;
    int addend = 0;
    BOOL timesTwo = false;
    for (NSInteger i = digitsOnly.length - 1; i >= 0; i--)
    {
        digit = [digitsOnly characterAtIndex:i] - '0';
        if (timesTwo)
        {
            addend = digit * 2;
            if (addend > 9) {
                addend -= 9;
            }
        }
        else {
            addend = digit;
        }
        sum += addend;
        timesTwo = !timesTwo;
    }
    int modulus = sum % 10;
    if (modulus == 0) {
        self.attributeInputStr = nil;
    }else{
         self.attributeInputStr = BankCardError;
    }
    return self.attributeInputStr == nil ? YES : NO;
    
}


@end
