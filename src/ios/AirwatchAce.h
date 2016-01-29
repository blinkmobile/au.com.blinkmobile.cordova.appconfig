//
//  ACEConfiguration.h
//  AirWatch
//
//  Created by Shane MacPhillamy on 28/01/2016.
//
//

#ifndef ACEConfiguration_h
#define ACEConfiguration_h

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface ACEConfiguration : CDVPlugin
{}

+ (NSString*)cordovaVersion;

@end

#endif /* ACEConfiguration_h */
