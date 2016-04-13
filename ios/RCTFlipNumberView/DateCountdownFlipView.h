#import <UIKit/UIKit.h>

@interface DateCountdownFlipView : UIView

@property (nonatomic, assign) NSInteger dayDigitCount;
@property (nonatomic, copy) NSString *bundleName;
@property (nonatomic, strong) NSDate *date;

@end