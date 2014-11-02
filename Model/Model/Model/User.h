//
//  User.h
//  Model
//
//  Created by 胡 桓铭 on 14/10/29.
//  Copyright (c) 2014年 agile. All rights reserved.
//

@class AccessToken;
@class Post;

@interface User : RLMObject

@property int user_id;
@property NSString *name;
@property NSString *last_login_at;
@property AccessToken *access_token;
@property RLMArray<Post> *posts;
@property (readonly) NSString* authorization;


+(Boolean)isLogin;

+(void)loginWithSuccess:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;


@end

RLM_ARRAY_TYPE(User)