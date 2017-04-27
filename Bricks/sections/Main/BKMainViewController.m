//
//  BKMainViewController.m
//  Bricks
//
//  Created by heke on 2017/4/21.
//  Copyright © 2017年 BK. All rights reserved.
//

#import "BKMainViewController.h"
#import "BKCAShapeLayerViewController.h"
#import "BKPingViewController.h"

@interface BKMainViewController ()
<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *rows;

@end

@implementation BKMainViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.rows = @[@"CAShapeLayer Usage", @"Ping"];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Bricks";
    
    [self setupUI];
}

- (void)setupUI {
    self.automaticallyAdjustsScrollViewInsets = NO;
    CGRect rt = [UIScreen mainScreen].bounds;
    rt.origin.y = 64;
    rt.size.height -= 64;
    self.tableView = [[UITableView alloc] initWithFrame:rt style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
}

#pragma mark - UITableView datasource and delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.rows.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
    }
    cell.textLabel.text = self.rows[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            BKCAShapeLayerViewController *vc = [[BKCAShapeLayerViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            BKPingViewController *vc = [[BKPingViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
            
        default:
            break;
    }
}

@end
