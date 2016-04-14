#import "DateCounterViewManager.h"
#import "DateCounterView.h"

@implementation DateCounterViewManager
RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[DateCounterView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(dayDigitCount, NSInteger);
RCT_EXPORT_VIEW_PROPERTY(bundleName, NSString);
RCT_EXPORT_VIEW_PROPERTY(mode, NSString);
RCT_EXPORT_VIEW_PROPERTY(date, NSDate);

@end

