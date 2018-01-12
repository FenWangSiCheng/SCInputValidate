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
- 3可以根据需要在SCInputValidate.h文件中自行修改提示内容
```
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

```
