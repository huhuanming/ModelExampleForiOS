//
//  AccessToken.h
//  Model
//
//  Created by 胡 桓铭 on 14/10/29.
//  Copyright (c) 2014年 agile. All rights reserved.
//

@interface AccessToken : RLMObject

@property NSString *token;
@property NSString *key;


@end

RLM_ARRAY_TYPE(AccessToken)
