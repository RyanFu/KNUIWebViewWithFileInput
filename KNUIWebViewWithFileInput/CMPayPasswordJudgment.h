//
//  CMPayPasswordJudgment.h
//  iPosLib
//
//  Created by devzkn on 29/03/2017.
//  Copyright © 2017 Hisun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMPayPasswordJudgment : NSObject

/**
 支付密码不能为连续、倒连续、重复数字；数字不能简单重复、如123123；不能与手机号码的任意6位连续数字相同

 @param password    用户输入的支付密码
 @param phoneNumber 与用户相关的手机号码

 @return 符合简单规则，就返回yes
 */
+ (BOOL) passwordJudgment:(NSString *)password phoneNumber:(NSString *)phoneNumber;





@end
