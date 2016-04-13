#import "JDDateCountdownFlipView.h"
#import "DateCountdownFlipView.h"

@implementation DateCountdownFlipView {
    JDDateCountdownFlipView *_flipView;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _flipView= [[JDDateCountdownFlipView alloc] initWithDayDigitCount:_dayDigitCount
                                                      imageBundleName:_bundleName];
    _flipView.targetDate = _date;
    _flipView.frame = self.bounds;
    [self insertSubview:_flipView atIndex:0];
}

@end
