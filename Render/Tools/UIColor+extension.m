//
//  UIColor+UIColor_extension.m
//  Render
//
//  Created by Fri on 2022/4/6.
//

#import "UIColor+extension.h"

@implementation UIColor (extension)

+ (UIColor *)random {
  UIColor *c = [[UIColor alloc] initWithRed:arc4random_uniform(255.0)/255.0
                         green:arc4random_uniform(255.0)/255.0
                          blue:arc4random_uniform(255.0)/255.0
                         alpha:1];
  
  return c;
}
@end
