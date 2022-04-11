//
//  PyramidViewController.m
//  Render
//
//  Created by Fri on 2022/4/10.
//

#import "PyramidViewController.h"
#import "PyramidView.h"

@interface PyramidViewController ()

@end

@implementation PyramidViewController

- (void)loadView {
  [super loadView];
  self.view = PyramidView.new;
}

@end
