//
//  Settings.m
//  Restr
//
//  Created by Dima Zudochkin on 19/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "Settings.h"

@implementation Settings
@synthesize shortBreaksEveryValue = _shortBreaksEveryValue;
@synthesize shortBreaksEnabled = _shortBreaksEnabled;
@synthesize shortBreaksForValue = _shortBreaksForValue;

+ (Settings *)sharedInstance
{
    static Settings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Settings alloc] init];
        sharedInstance->userDefaults = [NSUserDefaults standardUserDefaults];
        NSLog(@"Settings initialization");
        // Do any other initialisation stuff here
    });
    
    return sharedInstance;
}


- (NSInteger)shortBreaksForValue
{
    if (!_shortBreaksForValue) {
        NSInteger defaultValue = [userDefaults integerForKey:@"shortBreaksForValue"];
        
        if (defaultValue >= 0) {
            _shortBreaksForValue = defaultValue;
        } else {
            _shortBreaksForValue = 0;
        }
        
    }
    return _shortBreaksForValue;
}

- (void)setShortBreaksForValue:(NSInteger)shortBreaksForValue
{
    NSLog(@"new value for forValue set %lu", shortBreaksForValue);
    [userDefaults setInteger:shortBreaksForValue forKey:@"shortBreaksForValue"];
    [userDefaults synchronize];
    _shortBreaksForValue = shortBreaksForValue;
}

- (BOOL)isShortBreaksEnabled
{
    if (!_shortBreaksEnabled) {
        _shortBreaksEnabled = [userDefaults boolForKey:@"shortBreaksEnabled"];
    }
    
    return _shortBreaksEnabled;
}

- (void)setShortBreaksEnabled:(BOOL)shortBreaksEnabled
{
    [userDefaults setBool:shortBreaksEnabled forKey:@"shortBreaksEnabled"];
    [userDefaults synchronize];
    _shortBreaksEnabled = shortBreaksEnabled;
}

- (NSInteger)shortBreaksEveryValue
{
    if (!_shortBreaksEveryValue) {
        NSInteger defaultValue = [userDefaults integerForKey:@"shortBreaksEveryValue"];
        
        if (defaultValue >= 0) {
            _shortBreaksEveryValue = defaultValue;
        } else {
            _shortBreaksEveryValue = 0;
        }
    }
    return _shortBreaksEveryValue;
}

- (void)setShortBreaksEveryValue:(NSInteger)shortBreaksEveryValue
{
    [userDefaults setInteger:shortBreaksEveryValue forKey:@"shortBreaksEveryValue"];
    NSLog(@"saved %lu value for everyValue", shortBreaksEveryValue);
    
    [userDefaults synchronize];
    _shortBreaksEveryValue = shortBreaksEveryValue;
}

- (NSArray *)shortBreaksEveryValues
{
    return @[@"15 minutes", @"20 minutes", @"30 minutes"];
}

- (NSArray*)shortBreaksForValues
{
    return @[@"5 seconds", @"10 seconds", @"20 seconds"];
}

- (id) init
{
    self = [super init];
    if (self) {
        
    }
    
    return self;
}

- (BOOL)sync {
    return [userDefaults synchronize];
}

@end
