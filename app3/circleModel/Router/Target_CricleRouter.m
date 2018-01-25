//
//  Target_CricleRouter.m
//  app3
//
//  Created by wanghonglu on 2018/1/23.
//  Copyright © 2018年 babytree. All rights reserved.
//

#import "Target_CricleRouter.h"
#import "BBHotCricleListVC.h"
#import "BBTopicDetailVC.h"

@implementation Target_CricleRouter

//bbtrp://com.babytree.pregnancy/cricle/hotcriclelist
- (UIViewController *)hotcriclelist:(NSDictionary *)param
{
    BBHotCricleListVC *hotList = [[BBHotCricleListVC alloc]init];
    [self showVC:hotList byType:0];
    return hotList;
}

//bbtrp://com.babytree.pregnancy/cricle/topicdetaillist
- (UIViewController *)topicdetaillist:(NSDictionary *)param
{
    NSString *topicid = [param objectForKey:@"topic_id"];
    NSString *topicName = [[param objectForKey:@"topic_name"] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    BBTopicDetailVC *detailVC = [[BBTopicDetailVC alloc] init];
    detailVC.m_TopicID = topicid;
    detailVC.m_TopicTitle = topicName;
    
    [self showVC:detailVC byType:0];
    return detailVC;
}

@end
