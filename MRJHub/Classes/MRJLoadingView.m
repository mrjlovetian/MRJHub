//
//  MRJLoadingView.m
//  Pods
//
//  Created by Mr on 2017/9/18.

#import "MRJLoadingView.h"

@interface MRJLoadingView()

/// 加载动画视图
@property (nonatomic, strong)UIImageView *imageCircleImageView;

@end

@implementation MRJLoadingView

- (instancetype)initWithFrame:(CGRect)frame srcArr:(NSArray <UIImage *>*)srcArr {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.frame = self.frame;
        [self addSubview:imageView];
        
        imageView.center = CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0);
        if (srcArr.count > 0) {
            imageView.animationImages = srcArr;
        } else {
            imageView.animationImages = [self anumationImages];
        }
        imageView.animationDuration = 3.0;
        imageView.animationRepeatCount = NSIntegerMax;
        [imageView startAnimating];
    }
    return self;
}

/// 动画设置
- (void)startAnimation {
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = @(M_PI * 10);
    rotationAnimation.duration = 5;
    rotationAnimation.repeatCount = FLT_MAX;
    rotationAnimation.cumulative = NO;
    rotationAnimation.removedOnCompletion = NO;
    rotationAnimation.fillMode = kCAFillModeForwards;
    [self.imageCircleImageView.layer addAnimation:rotationAnimation forKey:@"Rotation"];
}

- (NSArray *)anumationImages {
    NSMutableArray *imageArr = [NSMutableArray arrayWithCapacity:1];
    for (int i = 1; i <= 44; i ++ ) {
        UIImage *image = nil;
        image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:[NSString stringWithFormat:@"mrjloading00%d", i] ofType:@"png"]];
        [imageArr addObject:image];
    }
    return imageArr;
}

@end
