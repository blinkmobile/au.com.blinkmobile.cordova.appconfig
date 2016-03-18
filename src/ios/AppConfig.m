//
//  AppConfig.m
//  AppConfig
//
//  Retargeted for AppConfig by Shane MacPhillamy 18/01/2016
//  Created by Shane MacPhillamy on 28/01/2016.
//
//

#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Cordova/CDV.h>
#import "AppConfig.h"

@implementation AppConfig


+ (NSString*)cordovaVersion
{
  return CDV_VERSION;
}

- (id)init
{
  self = [super init];
  [CDVPluginResult setVerbose:TRUE];
  return self;
}



- (void)getInfo:(CDVInvokedUrlCommand*)command
{
  NSDictionary* aceProperties = [self aceProperties];
  CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:aceProperties];
  
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (NSDictionary*)aceProperties
{
  NSMutableDictionary* aceProps = [NSMutableDictionary dictionaryWithCapacity:4];
  
  [aceProps setObject:@"Apple" forKey:@"manufacturer"];
  [aceProps setObject:@"iOS" forKey:@"platform"];
  [aceProps setObject:[[self class] cordovaVersion] forKey:@"cordova"];
  [aceProps setObject:@([self isVirtual]) forKey:@"isVirtual"];
  NSDictionary* aceReturn = [NSDictionary dictionaryWithDictionary:aceProps];
  return aceReturn;
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
