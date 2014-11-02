//
//  RLMObject+RLMObject_Netwokring.m
//  Model
//
//  Created by 胡 桓铭 on 14/11/2.
//  Copyright (c) 2014年 agile. All rights reserved.
//
#define kUrl @"http://huhuanming.github.io/images/test_data/"

@implementation RLMObject (AFNetworking)

+ (void)requestWithAuthorization:(NSString*)thePath method:(NSString *)theMethod Params:(NSDictionary*)theParams success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    NSString *authorization = @"你的认证计算方式";
    
    if ([User allObjects].count == 1) {
        User *user = [User allObjects].firstObject;
        authorization = user.authorization;
    }
    [self request:thePath Authorization:authorization method:theMethod Params:theParams success:success failure:failure];
}

+ (void)request:(NSString*)thePath method:(NSString *)theMethod Params:(NSDictionary*)theParams success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    [self request:thePath Authorization:@"ios" method:theMethod Params:theParams success:success failure:failure];
}


+ (void)request:(NSString*)thePath Authorization:(NSString*)theAuthorization  method:(NSString *)theMethod Params:(NSDictionary*)theParams success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager.requestSerializer setValue:theAuthorization forHTTPHeaderField:@"Authorization"];
    
    NSMutableURLRequest *request = [manager.requestSerializer requestWithMethod:theMethod URLString:[NSString stringWithFormat:@"%@%@", kUrl, thePath] parameters:theParams error:nil];
    AFHTTPRequestOperation *operation = [manager HTTPRequestOperationWithRequest:request success:success failure:failure];
    
    [manager.operationQueue addOperation:operation];
}


@end
