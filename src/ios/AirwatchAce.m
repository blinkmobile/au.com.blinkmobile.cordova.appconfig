//
//  ACEConfiguration.m
//  AirWatch
//
//  Created by Shane MacPhillamy on 28/01/2016.
//
//

#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "ACEConfiguration.h"

@implementation ACEConfiguration


+ (NSString*)cordovaVersion
{
  return CDV_VERSION;
}

- (BOOL)isVirtual
{
#if TARGET_OS_SIMULATOR
  return true;
#elif TARGET_IPHONE_SIMULATOR
  return true;
#else
  return false;
#endif
}

@end
