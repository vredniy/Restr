//
//  SettingsWindowController.m
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "SettingsWindowController.h"

@interface SettingsWindowController ()

@end

@implementation SettingsWindowController

-(id)init
{
    self = [super initWithWindowNibName:@"SettingsWindowController" owner:self];
    
    if (self) {
        settings = [Settings sharedInstance];
    }
    
    return self;
}

- (void)windowDidLoad {
    [self.shortBreaksEverySelect removeAllItems];
    [self.shortBreaksEverySelect addItemsWithTitles:[settings shortBreaksEveryValues]];
    
    [self.shortBreaksForSelect removeAllItems];
    [self.shortBreaksForSelect addItemsWithTitles:[settings shortBreaksForValues]];
    
    [self.shortBreaksForSelect selectItemAtIndex:[settings shortBreaksForValue]];
    
    [self.shortBreaksEverySelect selectItemAtIndex:[settings shortBreaksEveryValue]];
}

- (IBAction)shortBreaksEverySelectClicked:(id)sender {
    [settings setShortBreaksEveryValue:[sender indexOfSelectedItem]];
    NSLog(@"everySelectClicked value = %ld", (long)[sender indexOfSelectedItem]);
    [self restartTimer];
}

- (IBAction)shortBreaksForSelectClicked:(id)sender {
    [settings setShortBreaksForValue:[sender indexOfSelectedItem]];
    NSLog(@"forSelectClicked value = %ld", (long)[sender indexOfSelectedItem]);
    [self restartTimer];
}

- (void)restartTimer
{
    [[DZTimer sharedInstance] restartTimer];
}
@end
