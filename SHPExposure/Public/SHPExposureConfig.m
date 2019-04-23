//
//  SHPExposureConfig.m
//  SHPExposure
//
//  Created by Wang Ya on 31/10/18.
//  Copyright © 2018 Shopee. All rights reserved.
//

#import "SHPExposureConfig.h"
#import "SHPExposureNotificationCenter.h"

NSString *const SHPExposureConfigNotificationIntervalChanged = @"SHPExposureConfigNotificationIntervalChanged";

@implementation SHPExposureConfig

SHP_MACRO_SINGLETON_M({
    self->_interval = 0.2;
})

- (void)setInterval:(NSTimeInterval)interval
{
    if (interval == _interval) {
        return;
    }
    _interval = interval;
    [[SHPExposureNotificationCenter sharedInstance] postNotificationName:SHPExposureConfigNotificationIntervalChanged object:@(_interval)];
}

@end
