//
//  MRJLoadingView.m
//  Pods
//
//  Created by Mr on 2017/9/18.
//
//

#import "MRJLoadingView.h"

@interface MRJLoadingView()
@property (nonatomic, strong)UIImageView *imageCircleImageView;
@end

@implementation MRJLoadingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI
{
    self.backgroundColor = [UIColor clearColor];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = self.frame;
    [self addSubview:imageView];
    imageView.center = CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0);
    imageView.animationImages = [self anumationImages];
    imageView.animationDuration = 3.0;
    imageView.animationRepeatCount = NSIntegerMax;
    [imageView startAnimating];
}

- (void)startAnimation{
    CABasicAnimation *rotationAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    rotationAnimation.toValue = @(M_PI * 10);
    rotationAnimation.duration = 5;
    rotationAnimation.repeatCount = FLT_MAX;
    rotationAnimation.cumulative = NO;
    rotationAnimation.removedOnCompletion = NO;
    rotationAnimation.fillMode = kCAFillModeForwards;
    
    [self.imageCircleImageView.layer addAnimation:rotationAnimation forKey:@"Rotation"];
}

- (NSArray *)anumationImages{
    NSMutableArray *imageArr = [NSMutableArray arrayWithCapacity:1];
    
    for (int i = 1; i <= 44; i ++ ) {
        UIImage *image = nil;
        image = [[UIImage alloc] initWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:[NSString stringWithFormat:@"mrjloading00%d", i] ofType:@"png"]];
        [imageArr addObject:image];
    }
    return imageArr;
}

#pragma mark UI


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
