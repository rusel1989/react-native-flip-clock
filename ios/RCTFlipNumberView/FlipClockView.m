#import "JDFlipClockView.h"
#import "FlipClockView.h"

@implementation FlipClockView {
    JDFlipClockView *_flipClockView;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _flipClockView = [[JDFlipClockView alloc] initWithImageBundleName: _bundleName];
    _flipClockView.showsSeconds = YES;
    [self insertSubview:_flipClockView atIndex:0];
}

@end
