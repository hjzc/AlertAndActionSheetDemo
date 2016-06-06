//
//  ViewController.m
//  AlertAndActionDemo
//
//  Created by wangsong on 16/6/6.
//  Copyright © 2016年 weibo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIActionSheetDelegate,UIAlertViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [self alertStyleWithTwoTextField];

//    [self alertStyleWithTextField];
//    [self alertStyle];
//    [self actionSheetStyle];
//    [self loginAndPassword];
//    [self secureText];
//    [self plainText];
//    [self defaultAlert];
//    [self actionSheet];

}

- (void)defaultAlert
{
    // iOS8被废弃
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alertView" message:@"默认样式" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"查看",@"评论", nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    [alert show];
}

// 带有明文输入框
- (void)plainText
{
    // iOS8被废弃
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"输入姓名" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alert show];
}

// 带有密文输入框
- (void)secureText
{
    // iOS8被废弃
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"输入姓名" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
    [alert show];
}

// 带有登录和密码输入框
- (void)loginAndPassword
{
    // iOS8被废弃
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"登录" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"登录",@"注册", nil];
    alert.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    [alert show];
}
#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%ld",buttonIndex);
}

- (void)actionSheet
{
    // iOS8被废弃
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"查看",@"评论", nil];
    [sheet showInView:self.view];
}

#pragma mark - UIActionSheetDelegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%ld",buttonIndex);
}

- (void)actionSheetStyle {
    
    UIAlertController *actionSheetController = [UIAlertController alertControllerWithTitle:nil message:@"actionSheetStyle" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *showAllInfoAction = [UIAlertAction actionWithTitle:@"查看" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *pickAction = [UIAlertAction actionWithTitle:@"评论" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [actionSheetController addAction:pickAction];
    [actionSheetController addAction:cancelAction];
    [actionSheetController addAction:showAllInfoAction];
    
    [self presentViewController:actionSheetController animated:YES completion:nil];
}

- (void)alertStyle
{
    UIAlertController *actionSheetController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *showAllInfoAction = [UIAlertAction actionWithTitle:@"查看" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *pickAction = [UIAlertAction actionWithTitle:@"评论" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [actionSheetController addAction:pickAction];
    [actionSheetController addAction:cancelAction];
    [actionSheetController addAction:showAllInfoAction];
    
    [self presentViewController:actionSheetController animated:YES completion:nil];
}

- (void)alertStyleWithTextField
{
    UIAlertController *actionSheetController = [UIAlertController alertControllerWithTitle:nil message:@"输入姓名" preferredStyle:UIAlertControllerStyleAlert];
    [actionSheetController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"请输入姓名";
    }];
    
    UIAlertAction *determineAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];

    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [actionSheetController addAction:determineAction];
    [actionSheetController addAction:cancelAction];
    
    [self presentViewController:actionSheetController animated:YES completion:nil];
}


- (void)alertStyleWithTwoTextField
{
    UIAlertController *actionSheetController = [UIAlertController alertControllerWithTitle:nil message:@"登录" preferredStyle:UIAlertControllerStyleAlert];
    [actionSheetController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"账号";
    }];
    [actionSheetController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.placeholder = @"密码";
        textField.secureTextEntry = YES;
    }];
    
    UIAlertAction *determineAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    
    [actionSheetController addAction:determineAction];
    [actionSheetController addAction:cancelAction];
    
    [self presentViewController:actionSheetController animated:YES completion:nil];
}
@end
