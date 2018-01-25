//
//  BBTopicDetailVC.m
//  app3
//
//  Created by wanghonglu on 2018/1/22.
//  Copyright © 2018年 babytree. All rights reserved.
//

#import "BBTopicDetailVC.h"
#import "Masonry.h"

@interface BBTopicDetailVC ()

@property (nonatomic, strong) UILabel *s_ParaLabel;

@end

@implementation BBTopicDetailVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.title = @"帖子详情";
    [self.view addSubview:self.s_ParaLabel];
    [self.s_ParaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view.mas_leading).offset(16);
        make.trailing.equalTo(self.view.mas_trailing).offset(-16);
        make.top.equalTo(self.view.mas_top).offset(100);
        make.bottom.equalTo(self.view.mas_bottom).offset(-100);
    }];

    NSString *paraStr = [NSString stringWithFormat:@"获取到的参数值为\n topic_id = %@ \n topic_name = %@",self.m_TopicID,self.m_TopicTitle];
    self.s_ParaLabel.text = paraStr;

}


- (UILabel *)s_ParaLabel {
    if (!_s_ParaLabel) {
        _s_ParaLabel               = [[UILabel alloc] init];
        _s_ParaLabel.font          = [UIFont systemFontOfSize:16.0f];
        _s_ParaLabel.numberOfLines = 0;
        _s_ParaLabel.textColor = [UIColor colorWithRed:24/255.0 green:24/255.0 blue:24/244.0 alpha:1];
        _s_ParaLabel.clipsToBounds = YES;
    }
    return _s_ParaLabel;
}



@end
