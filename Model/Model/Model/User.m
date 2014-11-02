//
//  User.m
//  Model
//
//  Created by 胡 桓铭 on 14/10/29.
//  Copyright (c) 2014年 agile. All rights reserved.
//

#import "User.h"

@implementation User

+ (NSString *)primaryKey
{
    return @"user_id";
}

+ (NSArray *)ignoredProperties
{
    return @[@"authorization"];
}

+(Boolean)isLogin{
    return [User allObjects].count != 1;
}

- (NSString *)authorization
{
    return [NSString stringWithFormat:@"%@-%@", self.access_token.token, self.access_token.key];
}

+(void)loginWithSuccess:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    [self request:@"userWithPost.json" method:@"GET" Params:nil success:success failure:failure];
}



@end