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
 return 15;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath
*)indexPath{

 UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
 return cell;
} 

@end
