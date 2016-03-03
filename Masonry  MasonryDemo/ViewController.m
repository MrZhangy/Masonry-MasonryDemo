//
//  ViewController.m
//  Masonry  MasonryDemo
//
//  Created by 张亚丰 on 16/3/2.
//  Copyright © 2016年 zhangyafeng. All rights reserved.
//

#import "ViewController.h"
#import "TMContentCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self.textField addTarget:self action:@selector(textFieldChanged:) forControlEvents:UIControlEventEditingChanged];
    [self createUI];
}

-(void)textFieldChanged:(UITextField*)textField {
    if (textField.text.length > 5) {
        textField.text = [textField.text substringToIndex:5];
    }
//    textField.text =
    NSLog(@"%@",textField.text);
}

-(void)createUI {
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    CGFloat height = [[[TMContentCell alloc] init].contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height + 0.5;
    
    return height;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell  = [[TMContentCell alloc] init];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
