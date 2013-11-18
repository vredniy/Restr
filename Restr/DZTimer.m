//
//  DZTimer.m
//  TimerDemo
//
//  Created by Dima Zudochkin on 18/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "DZTimer.h"
#import "DZWindowController.h"

@implementation DZTimer

@synthesize window;
@synthesize wc;

- (void)startFirstTimer
{
    currentTimer = [NSTimer scheduledTimerWithTimeInterval:10 target:self selector:@selector(stopFirstTimer) userInfo:nil repeats:NO];
}

- (void)startSecondTimer
{
    currentTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(stopSecondTimer) userInfo:nil repeats:NO];
}

- (void)stopFirstTimer
{
    NSLog(@"begin showing message");
    wc = [[DZWindowController alloc] initWithWindowNibName:@"DZWindowController"];
    [wc showWindow:self];
    
    [self startSecondTimer];
}

- (void)stopSecondTimer
{
    [wc close];
    NSLog(@"stop showing message");
    [self startFirstTimer];
}
@end
