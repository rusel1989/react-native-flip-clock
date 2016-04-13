#import "DateCountdownFlipView.h"
#import "DateCountdownFlipViewManager.h"

@implementation DateCountdownFlipViewManager
RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[DateCountdownFlipView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(dayDigitCount, NSInteger);
RCT_EXPORT_VIEW_PROPERTY(bundleName, NSString);
RCT_EXPORT_VIEW_PROPERTY(date, NSDate);

@end

