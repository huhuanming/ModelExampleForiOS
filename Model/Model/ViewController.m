//
//  ViewController.m
//  Model
//
//  Created by 胡 桓铭 on 14/10/29.
//  Copyright (c) 2014年 agile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [User loginWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        [[RLMRealm defaultRealm] beginWriteTransaction];
        
        User *user = [[User alloc] initWithObject:responseObject];
        
//        [[RLMRealm defaultRealm] addObject:user];
        
        [[RLMRealm defaultRealm] addOrUpdateObject:user];
        
//        [User createOrUpdateInDefaultRealmWithObject:responseObject];
        
        [[RLMRealm defaultRealm] commitWriteTransaction];
        
        NSLog(@"%@", [User allObjects]);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
