//
//  ViewController.m
//  CommentDemo
//
//  Created by 袁超杰 on 2017/5/19.
//  Copyright © 2017年 wangli.space. All rights reserved.
//

#import "ViewController.h"
#import "CommentCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSMutableArray * comments;
@end

@implementation ViewController

- (NSMutableArray *)comments{
    if (_comments == nil) {
        _comments = [@[@{@"name":@"三羟甲基丙烷三油酸酯",@"content":@"马蓉妈和宋喆爸？？？？父母辈的也这么无耻？？？"},
                       @{@"name":@"沫子九",@"content":@"哪成想到有一天自己的智商都应付不了娱乐新闻了"},
                       @{@"name":@"lio昆",@"content":@"王宝强13年和15年发生两次车祸都没死， 15年是他弟妹死了， 两次车祸老婆和经纪人都不在车上    除了宝宝的经纪人知道宝宝的工作安排谁还知道[怒骂]宝宝要是当时出事了你也不用离婚分财产了[微笑]直接他妈继承遗产了[微笑] 严重怀疑是蓄意谋杀[微笑]同意的右上角[good]粘贴复制"},
                       @{@"name":@"芊芊细绵绵",@"content":@"？？？逻辑上是马蓉父母和宋喆父母离婚，结果马蓉母亲和宋喆父亲结婚，这样马蓉转移的财产先给母亲，通过婚内财产再给宋喆父亲？"},
                       @{@"name":@"玛雅小粉红",@"content":@"让马蓉和刘洲成在一起 [微笑]"},
                       @{@"name":@"冷智伊",@"content":@"从事情刚发生到现在我就一直觉得王宝强是碰到诈骗集团了。。。。"},
                       @{@"name":@"多喝热水少吃冰的吕shersher",@"content":@"卧槽什么意思啊有人解释一下吗，为啥马蓉妈和宋喆爸结婚了"},
                       @{@"name":@"小毛槑",@"content":@"真是蠢啊，直接马蓉的妈和宋喆结婚转移财产再离不就完了，还节约9块钱呢[阴险]"},
                       @{@"name":@"曾鹏宇",@"content":@"：真的是龙生龙、凤生凤、老鼠的女儿会打洞……等等，马蓉妈和宋喆爸离婚……这信息量……[笑cry][笑cry][笑cry]"},
                       @{@"name":@"missingnava",@"content":@"所以婚姻关系本质就是经济关系啊!不需要解决未婚问题,解决穷的问题就好啦【啊跑题了】"},
                       @{@"name":@"Alvin_王是污妖王",@"content":@"这个信息量 搁在高考语文阅读理解里就是个bug 原来无耻也是可以遗传的[摊手]"},
                       @{@"name":@"公孙喵",@"content":@"马蓉事件算是狠狠的抽了我国司法系统一个耳光，并且完整的，三个巴掌，抽在了婚姻法上，一个利用法律漏洞完美达到了转移财产的目的，王宝强目前为止的财产估计这一家子极品觉得已经能挥霍一辈子了。就算法律制裁不了你人在做天在看，不是你的财富，你不会赚钱，总有一天你的报应会到的。"}
                       ]mutableCopy];
    }
    return _comments;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"评论";
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 70.f;
    self.tableView.allowsSelection = NO;
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.comments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CommentCell *cell = [CommentCell cellWithTableView:tableView];
    [cell setCommentContentWithDict:self.comments[indexPath.row]];
    return cell;
}
- (IBAction)changeDataArray:(UIButton *)sender {
    int idx1 = arc4random()%self.comments.count;
    int idx2 = arc4random()%self.comments.count;
    [self.comments exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
