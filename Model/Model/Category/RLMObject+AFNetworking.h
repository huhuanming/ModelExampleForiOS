//
//  RLMObject+RLMObject_Netwokring.h
//  Model
//
//  Created by 胡 桓铭 on 14/11/2.
//  Copyright (c) 2014年 agile. All rights reserved.
//

#import "RLMObject.h"

@interface RLMObject (AFNetworking)

+ (void)request:(NSString*)thePath method:(NSString *)theMethod Params:(NSDictionary*)theParams success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;

@end
