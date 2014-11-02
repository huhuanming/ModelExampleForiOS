//
//  Post.h
//  Model
//
//  Created by 胡 桓铭 on 14/10/29.
//  Copyright (c) 2014年 agile. All rights reserved.
//

@class Comment;

@interface Post : RLMObject

@property NSString* title;
@property Comment *comment;

@end

// This protocol enables typed collections. i.e.:
// RLMArray<Post>
RLM_ARRAY_TYPE(Post)
