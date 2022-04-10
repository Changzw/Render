//
//  ViewController.m
//  Render
//
//  Created by Fri on 2022/3/31.
//

#import "ContentViewController.h"
#import <objc/runtime.h>

@interface ContentViewController ()
@property (nonatomic, strong) NSArray<NSString*> *items;
@end

@implementation ContentViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  _items = @[
    @"GLKRenderColorViewController",
    @"RenderImageViewController",
    @"GLSLViewController",
    @"CubeImageViewController",
  ];
  [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:[UITableViewCell description]];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:UITableViewCell.description forIndexPath:indexPath];
  cell.textLabel.text = _items[indexPath.row];
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
  NSString *name = _items[indexPath.row];
  [self.navigationController pushViewController:[[NSClassFromString(name) alloc] init] animated:YES];
}
@end
