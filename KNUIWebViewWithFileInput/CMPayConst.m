//
//  CMPayConst.m
//  iPosLib
//code_home.xhtml
//  Created by devzkn on 10/01/2017.
//  Copyright © 2017 Hisun. All rights reserved.
//
#import <Foundation/Foundation.h>
/**各环境地址
 sit,uat   uat.cmpay.com
 预投产，生产 www.cmpay.com
 
 返回app登录页的js接口  backCoudIPSAPP */
/** 生产环境 */
NSString *const PRODUCTIONBaseURL = @"https:///merchant/user/service/";
/** 预投产环境 */
   NSString *const PREBaseURL = @"https:///merchant/user/service/";
/** /UAT测试环境 */

   NSString *const UATBaseURL = @"https:///merchant/user/service/";
/** SIT内网测试环境 */
   NSString *const SITINTRANETBaseURL = @"https:///merchant/user/service/";

   NSString *const SITEXTRANETBaseURL = @"https:///merchant/user/service/";
