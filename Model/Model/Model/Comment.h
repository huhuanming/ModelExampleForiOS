//
//  Comment.h
//  Model
//
//  Created by 胡 桓铭 on 14/10/29.
//  Copyright (c) 2014年 agile. All rights reserved.
//

@interface Comment : RLMObject

@property NSString* context;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Comment>
RLM_ARRAY_TYPE(Comment)
