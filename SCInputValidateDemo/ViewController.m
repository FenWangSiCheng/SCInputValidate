//
//  ViewController.m
//  SCInputValidateDemo
//
//  Created by abon on 2018/1/12.
//  Copyright © 2018年 kaito. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+SCValidate.h"
#import "SVProgressHUD.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *phoneNumTextField;

@property (weak, nonatomic) IBOutlet UITextField *bankCardTextField;

@property (weak, nonatomic) IBOutlet UITextField *identifiedCardTextField;

@property (weak, nonatomic) IBOutlet UITextField *pwdTextField;

@property (weak, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setBackgroundColor:[UIColor blackColor]];
    
    //初始化属性
    //电话号码验证
    self.phoneNumTextField.inputValidate = [SCPhoneNumberValidate new];
    //银行号码验证
    self.bankCardTextField.inputValidate = [SCBankCardValidate new];
    //身份证号码验证
    self.identifiedCardTextField.inputValidate = [SCidentifieCardValidate new];
    //密码验证
    self.pwdTextField.inputValidate = [SCPwdValidate new];
    //邮箱验证
    self.emailTextField.inputValidate = [SCEmailValidate new];
}

- (IBAction)phoneNumButton:(UIButton *)sender {
    
    if (![self.phoneNumTextField validate]) {
        return;
    }
}

- (IBAction)bankCardButton:(UIButton *)sender {
    if (![self.bankCardTextField validate]) {
        return;
    }
}

- (IBAction)identifiedCardButton:(UIButton *)sender {
    if (![self.identifiedCardTextField validate]) {
        return;
    }
}

- (IBAction)pwdButton:(UIButton *)sender {
    if (![self.pwdTextField validate]) {
        return;
    }
}

- (IBAction)emailButton:(UIButton *)sender {
    if (![self.emailTextField validate]) {
        return;
    }
}


@end
