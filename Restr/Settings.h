//
//  Settings.h
//  Restr
//
//  Created by Dima Zudochkin on 19/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Settings : NSObject {

    
    NSArray *shortBreaksEveryValues;
    NSArray *shortBreaksForValues;
    
    NSUserDefaults *userDefaults;
}

@property (nonatomic) NSInteger shortBreaksEveryValue;
@property (nonatomic) NSInteger shortBreaksForValue;
@property (nonatomic) BOOL shortBreaksEnabled;

@property (nonatomic, strong, readonly) NSArray *shortBreaksEveryValues;
@property (nonatomic, strong, readonly) NSArray *shortBreaksForValues;

- (BOOL)sync;
+ (Settings *)sharedInstance;
@end
