//
//  CubeImageViewController.m
//  Render
//
//  Created by Fri on 2022/4/10.
//

#import "GLSLViewController.h"
#import "GLKDrawingView.h"
@interface GLSLViewController ()
@property(nonnull,strong) GLKDrawingView *myView;

@end

@implementation GLSLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.myView = (GLKDrawingView *)self.view;
}


@end
