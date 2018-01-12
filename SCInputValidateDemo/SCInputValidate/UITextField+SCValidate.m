//
//  UITextField+SCValidate.m
//  SCInputValidateDemo
//
//  Created by abon on 2018/1/12.
//  Copyright © 2018年 kaito. All rights reserved.
//

#import "UITextField+SCValidate.h"
#import <objc/message.h>
#import "SVProgressHUD.h"

static const void *KInputValidate = @"inputValidate";

@implementation UITextField (SCValidate)

- (void)setInputValidate:(SCInputValidate *)inputValidate {
    objc_setAssociatedObject(self, &KInputValidate,  inputValidate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (SCInputValidate *)inputValidate {
    return objc_getAssociatedObject(self,&KInputValidate);
}

- (BOOL)validate {
    BOOL result = [self.inputValidate validateInputTextField:self];
    if (!result) {
        [SVProgressHUD showImage:[UIImage imageNamed:@""] status:self.inputValidate.attributeInputStr];
        [SVProgressHUD dismissWithDelay:2];
    }
    return result;
}
@end
