//
//  AppDelegate.m
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    //[statusItem setTitle:@"Restr"];
    [statusItem setHighlightMode:YES];
    
    NSImage *statusImage = [NSImage imageNamed:@"crying_baby.png"];
    [statusItem setImage:statusImage];
    
    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(shortBreak:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}

- (void)shortBreak:(id)sender
{
    NSLog(@"hello");
}

@end
