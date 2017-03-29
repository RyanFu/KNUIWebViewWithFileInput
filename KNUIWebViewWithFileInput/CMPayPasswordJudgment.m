//
//  CMPayPasswordJudgment.m
//  iPosLib
//
//  Created by devzkn on 29/03/2017.
//  Copyright © 2017 Hisun. All rights reserved.
//

#import "CMPayPasswordJudgment.h"

@implementation CMPayPasswordJudgment



+ (BOOL) passwordJudgment:(NSString *)password phoneNumber:(NSString *)phoneNumber
{//支付密码简单密码规则判断
    BOOL isMatch = YES;
    if(!password){
        password = @"";
    }
    //判断是否连续重复
    NSString *str = [password substringWithRange:NSMakeRange(0, 1)];
    //DMLog(@"str = %@", str);
    for (int i = 1; i < password.length; i ++){
        //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 1)]);
        if ([str isEqualToString:[password substringWithRange:NSMakeRange(i, 1)]]){
            isMatch = YES;
        }else{
            isMatch = NO;
            break;
        }
    }
    
    //判断是否递增
    if (!isMatch){
        for (int i = 1; i <= password.length - 1; i ++){
            //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 1)]);
            if ([[password substringWithRange:NSMakeRange(i - 1, 1)] intValue] + 1 == [[password substringWithRange:NSMakeRange(i, 1)] intValue]){
                isMatch = YES;
            }else{
                isMatch = NO;
                break;
            }
        }
    }
    
    //判断是否递减
    if (!isMatch){
        for (int i = 1; i <= password.length - 1; i ++){
            //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 1)]);
            if ([[password substringWithRange:NSMakeRange(i - 1, 1)] intValue] - 1 == [[password substringWithRange:NSMakeRange(i, 1)] intValue]){
                isMatch = YES;
            }else{
                isMatch = NO;
                break;
            }
        }
    }
    
    //判断aabbcc类型
    if (!isMatch){
        for (int i = 0; i <= password.length - 1; i = i + 2){
            //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 1)]);
            if ([[password substringWithRange:NSMakeRange(i, 1)] isEqualToString:[password substringWithRange:NSMakeRange(i + 1, 1)]]){
                isMatch = YES;
            }else{
                isMatch = NO;
                break;
            }
        }
    }
    
    //判断aaabbb类型
    if (!isMatch){
        for (int i = 0; i <= password.length - 1; i = i + 3){
            //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 1)]);
            if ([[password substringWithRange:NSMakeRange(i, 1)] isEqualToString:[password substringWithRange:NSMakeRange(i + 1, 1)]] && [[password substringWithRange:NSMakeRange(i, 1)] isEqualToString:[password substringWithRange:NSMakeRange(i + 2, 1)]]){
                isMatch = YES;
            }else{
                isMatch = NO;
                break;
            }
        }
    }
    
    //判断ababab类型
    if (!isMatch){
        str = [password substringWithRange:NSMakeRange(0, 2)];
        //DMLog(@"str = %@", str);
        for (int i = 2; i <= password.length - 2; i = i + 2){
            //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 2)]);
            if ([str isEqualToString:[password substringWithRange:NSMakeRange(i, 2)]]){
                isMatch = YES;
            }else{
                isMatch = NO;
                break;
            }
        }
    }
    
    //判断abcabc类型
    if (!isMatch){
        str = [password substringWithRange:NSMakeRange(0, 3)];
        //DMLog(@"str = %@", str);
        for (int i = 3; i <= password.length - 3; i = i + 3){
            //DMLog(@"%@", [password substringWithRange:NSMakeRange(i, 3)]);
            if ([str isEqualToString:[password substringWithRange:NSMakeRange(i, 3)]]){
                isMatch = YES;
            }else{
                isMatch = NO;
                break;
            }
        }
    }
    
    //判断是否与手机号码任意连续6位相同
    if (!isMatch){
        NSRange rang = [phoneNumber rangeOfString:password];
        if (rang.location != NSNotFound){
            isMatch = YES;
        }else{
            isMatch = NO;
        }
    }
    
    //判断是否与手机号码任意倒续6位相同
    if (!isMatch){
        
        NSMutableString *reversedString =[[NSMutableString alloc]init] ;
        NSInteger charIndex = [phoneNumber length];
        while (charIndex > 0) {
            charIndex --;
            NSRange subStrRange =NSMakeRange(charIndex, 1);
            [reversedString appendString:[phoneNumber substringWithRange:subStrRange]];
        }
        
        NSRange rang = [reversedString rangeOfString:password];
        if (rang.location != NSNotFound){
            isMatch = YES;
        }else{
            isMatch = NO;
        }
    }
    
    return isMatch;
}

@end
