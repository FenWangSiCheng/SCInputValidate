# SCInputValidate
输入框验证(包括密码验证,电话号码验证,省份证验证,银行卡验证,邮箱验证)

项目采用策略设计模式只需两行代码完成验证及提示（提示框集成了第三方SVProgressHUD需要导入）

###使用说明
- 1在viewDidLoad初始化验证类
```
- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化属性
    //电话号码验证
    self.phoneNumTextField.inputValidate = [SCPhoneNumberValidate new];

}
```
- 2在验证的地方调用方法
```
- (IBAction)phoneNumButton:(UIButton *)sender {
    
    if (![self.phoneNumTextField validate]) {
        return;
    }
}
```
