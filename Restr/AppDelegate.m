//
//  AppDelegate.m
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "AppDelegate.h"
#import "SettingsWindowController.h"
#import "DZTimer.h"

#import "Settings.h"

@implementation AppDelegate

@synthesize settingsWindowController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [statusItem setMenu:statusMenu];
    //[statusItem setTitle:@"Restr"];
    [statusItem setHighlightMode:YES];
    
    NSImage *statusImage = [NSImage imageNamed:@"crying_baby.png"];
    [statusItem setImage:statusImage];
    
    //timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(shortBreak:) userInfo:nil repeats:YES];
    //[[NSRunLoop currentRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
    
//    timer = [[Timer alloc] init];
//    timer.shortBreaksEvery = 10;
//    timer.shortBreaksFor = 3;
//    timer.callee = self;
//    timer.selector = @selector(shortBreak:);
//    [timer restart];
    [[DZTimer sharedInstance] restartTimer];
    
    //NSLog(@"%d", [@"15 minutes" intValue]);
}

//- (void)shortBreak:(id)sender
//{
//    NSAlert *alert = [[NSAlert alloc] init];
//    [alert setMessageText:@"ShortBreak"];
//    [alert runModal];
//    [timer restart];
//}

- (IBAction)settingsClicked:(id)sender {
    settingsWindowController = [[SettingsWindowController alloc] init];
    [settingsWindowController showWindow:self];
}
@end


