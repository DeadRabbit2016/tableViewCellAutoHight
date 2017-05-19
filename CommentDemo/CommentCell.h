//
//  CommontCell.h
//  CommentDemo
//
//  Created by 袁超杰 on 2017/5/19.
//  Copyright © 2017年 wangli.space. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommentCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;
- (void)setCommentContentWithDict:(NSDictionary *)dict;

@end
