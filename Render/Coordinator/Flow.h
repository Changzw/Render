//
//  Flow.h
//  Render
//
//  Created by Fri on 2022/3/31.
//

@import UIKit;
@import Foundation;

NS_ASSUME_NONNULL_BEGIN

@protocol Branch <NSObject>
@end

@protocol Flow <NSObject>
@property (nonatomic, strong) UIViewController *rootViewController;
//@property (nonatomic, strong) id<Branch> branch;
- (instancetype)init:(UIViewController *)rootViewController;
@end

NS_ASSUME_NONNULL_END
