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
    return self;
}

- (IBAction)saveAndCloseClicked:(id)sender {
    //NSLog(@"%i", self.doShortBreaksCheck.state == NSOnState);
    NSLog(@"%@", self.shortBreaksEverySelect.stringValue);
}
- (IBAction)shortBreaksEverySelectClicked:(id)sender {
    NSLog(@"%i", [sender indexOfSelectedItem]);
}

@end
