//
//  AirwatchAce.h
//  AirWatch
//
//  Created by Shane MacPhillamy on 28/01/2016.
//
//

#ifndef AppConfig_h
#define AppConfig_h

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface AppConfig : CDVPlugin
{}

+ (NSString*)cordovaVersion;

- (void)getInfo:(CDVInvokedUrlCommand*)command;

@end

#endif /* AppConfig_h */
