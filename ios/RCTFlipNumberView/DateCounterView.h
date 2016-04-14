#import <UIKit/UIKit.h>

@interface DateCounterView : UIView

@property (nonatomic, assign) NSInteger dayDigitCount;
@property (nonatomic, copy) NSString *bundleName;
@property (nonatomic, copy) NSString *mode;
@property (nonatomic, strong) NSDate *date;

@end