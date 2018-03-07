//
//  WXEventMoudle.m
//  WeexDemo
//
//  Created by libo on 2018/3/7.
//  Copyright © 2018年 taobao. All rights reserved.
//

#import "WXEventModule.h"

@implementation WXEventModule

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(openURL:))

- (void)openURL:(NSString *)url {
    NSLog(@"%@",url);
}

@end
