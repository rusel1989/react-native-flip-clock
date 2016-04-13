//
//  RCTFlipNumberViewManager.m
//  RCTFlipNumberView
//
//  Created by Jakub Martyčák on 13.04.16.
//  Copyright © 2016 Jakub Martyčák. All rights reserved.
//
#import "JDDateCountdownFlipView.h"
#import "RCTDateCountdownFlipViewManager.h"

@implementation RCTDateCountdownFlipViewManager {
    NSInteger *dayDigitCount;
}

RCT_EXPORT_MODULE();
RCT_EXPORT_VIEW_PROPERTY(dayDigitCount, NSInteger);

- (UIView *)view
{
    JDDateCountdownFlipView *flipView = [[JDDateCountdownFlipView alloc] initWithDayDigitCount:*(dayDigitCount)
                                                                               imageBundleName:@"JDFlipNumberView"];

    NSDateComponents *currentComps = [[NSCalendar currentCalendar] components:NSCalendarUnitYear
                                                                     fromDate:[NSDate date]];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"dd.MM.yy HH:mm"];
    flipView.targetDate = [dateFormatter dateFromString:[NSString stringWithFormat: @"01.01.%ld 00:00", (long)currentComps.year+1]];
    return flipView;
}

@end

