//
//  CubeImageViewController.m
//  Render
//
//  Created by Fri on 2022/4/10.
//

#import "GLSLViewController.h"
#import "CAEAGLView.h"
#import "GLKDrawingView.h"

@interface GLSLViewController ()

@end

@implementation GLSLViewController

- (void)loadView {
  [super loadView];
  self.view = GLKDrawingView.new;
}

@end
