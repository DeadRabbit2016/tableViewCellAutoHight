//
//  CommontCell.m
//  CommentDemo
//
//  Created by 袁超杰 on 2017/5/19.
//  Copyright © 2017年 wangli.space. All rights reserved.
//

#import "CommentCell.h"

@interface CommentCell ()
@property (weak, nonatomic) IBOutlet UILabel *comentNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentContentLabel;

@end
@implementation CommentCell

+ (instancetype)cellWithTableView:(UITableView *)tableView{
    static NSString *ID = @"CommentCell";
    CommentCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if(cell == nil){
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CommentCell" owner:nil options:nil] lastObject];
    }
    
    return cell;
}
- (void)setCommentContentWithDict:(NSDictionary *)dict{
    self.comentNameLabel.text = dict[@"name"];
//    self.commentContentLabel.layer.
    self.commentContentLabel.text = dict[@"content"];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
