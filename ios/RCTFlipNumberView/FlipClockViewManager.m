#import "FlipClockViewManager.h"
#import "FlipClockView.h"

@implementation FlipClockViewManager
RCT_EXPORT_MODULE();

- (UIView *)view
{
    return [[FlipClockView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(showSeconds, BOOL);
RCT_EXPORT_VIEW_PROPERTY(bundleName, NSString);

@end
