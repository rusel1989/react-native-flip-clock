#import "JDDateCountdownFlipView.h"
#import "DateCounterView.h"

@implementation DateCounterView {
    JDDateCountdownFlipView *_flipView;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    _flipView= [[JDDateCountdownFlipView alloc] initWithDayDigitCount:_dayDigitCount
                                                      imageBundleName:_bundleName];
    _flipView.mode = _mode;
    _flipView.targetDate = _date;
    _flipView.frame = self.bounds;
    [self insertSubview:_flipView atIndex:0];
}

- (void)setDate:(NSDate *)date
{
    _date = [date copy];
    [_flipView stop];
    [_flipView setTargetDate:_date];
    [_flipView start];
}

@end
