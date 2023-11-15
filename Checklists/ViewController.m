//
//  ViewController.m
//  Checklists
//
//  Created by 黄继鹏 on 2023/11/15.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//(NSInteger)     tableView:   (UITableView *) tableView  numberOfRowsInSection:   (NSInteger)  section
// 返回值类型    方法名称的一部分     第一个参数的类型  参数的变量  方法名称的一部分          第二个参数的类型   参数的变量
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
 return 100;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath
*)indexPath{

    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];

    UILabel *label = (UILabel*)[cell viewWithTag:1000];

    if(indexPath.row %5 == 0){
        label.text = @"观看嫦娥⻜天和⽟兔升空的视频";
    }else if(indexPath.row %5 == 1){
        label.text = @"了解Sony a7和MBP的最新价格";
    }else if(indexPath.row %5 == 2){
        label.text = @"复习苍⽼师的经典视频教程";
    }else if(indexPath.row %5 == 3){
        label.text = @"去电影院看地⼼引⼒";
    }else if(indexPath.row %5 == 4){
        label.text = @"看⻄甲巴萨新败的⽐赛回放";
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView cellForRowAtIndexPath:indexPath];

    if(cell.accessoryType == UITableViewCellAccessoryNone){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
