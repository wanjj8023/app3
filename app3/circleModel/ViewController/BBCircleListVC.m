//
//  BBCircleListVC.m
//  app3
//
//  Created by wanghonglu on 2018/1/22.
//  Copyright © 2018年 babytree. All rights reserved.
//

#import "BBCircleListVC.h"
#import "Masonry.h"
#import "BBTCircleRouter.h"

@interface BBCircleListVC ()

@property (nonatomic, strong) UIButton *s_TopButton;

@property (nonatomic, strong) UIButton *s_BottomButton;

@end

@implementation BBCircleListVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationController.title = @"圈子列表";
    [self setUI];
}

-(void)setUI
{
    [self.view addSubview:self.s_TopButton];
    [self.view addSubview:self.s_BottomButton];

    [self.s_TopButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view.mas_leading).offset(16);
        make.trailing.equalTo(self.view.mas_trailing).offset(-16);
        make.top.equalTo(self.view.mas_top).offset(100);
        make.height.mas_equalTo(60);
    }];

    [self.s_BottomButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view.mas_leading).offset(16);
        make.trailing.equalTo(self.view.mas_trailing).offset(-16);
        make.top.equalTo(self.view.mas_top).offset(200);
        make.height.mas_equalTo(60);
    }];

}

- (UIButton *)s_TopButton
{
    if (!_s_TopButton) {
        _s_TopButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _s_TopButton.exclusiveTouch = YES;
        _s_TopButton.backgroundColor = [UIColor whiteColor];
        _s_TopButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_s_TopButton setTitleColor:[UIColor colorWithRed:102/255.0 green:102/255.0 blue:102/255.0 alpha:1] forState:UIControlStateNormal];
        [_s_TopButton setTitle:@"热门圈子" forState:UIControlStateNormal];
        [_s_TopButton addTarget:self action:@selector(hotCricleClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _s_TopButton;
}

- (UIButton *)s_BottomButton
{
    if (!_s_BottomButton) {
        _s_BottomButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _s_BottomButton.exclusiveTouch = YES;
        _s_BottomButton.backgroundColor = [UIColor whiteColor];
        _s_BottomButton.titleLabel.font = [UIFont systemFontOfSize:13];
        [_s_BottomButton setTitleColor:[UIColor colorWithRed:102/255.0 green:102/255.0 blue:102/255.0 alpha:1] forState:UIControlStateNormal];
        [_s_BottomButton setTitle:@"帖子详情" forState:UIControlStateNormal];
        [_s_BottomButton addTarget:self action:@selector(topicDetailClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _s_BottomButton;
}


-(IBAction)hotCricleClick:(id)sender
{
    NSURL *url = [NSURL URLWithString:@"bbtrp://com.babytree.pregnancy/cricle/hotcriclelist"];
    [BBTCircleRouter routeWithUrl:url completion:nil];
}

-(IBAction)topicDetailClick:(id)sender
{
    NSString *urlStr = [@"bbtrp://com.babytree.pregnancy/cricle/topicdetaillist?topic_id=123456&topic_name=我是帖子标题" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url = [NSURL URLWithString:urlStr];
    [BBTCircleRouter routeWithUrl:url completion:nil];
}

@end
