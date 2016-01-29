//
//  AirwatchAce.h
//  AirWatch
//
//  Created by Shane MacPhillamy on 28/01/2016.
//
//

#ifndef AirwatchAce_h
#define AirwatchAce_h

#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface AirwatchAce : CDVPlugin
{}

+ (NSString*)cordovaVersion;

- (void)getAceInfo:(CDVInvokedUrlCommand*)command;

@end

#endif /* AirwatchAce_h */
