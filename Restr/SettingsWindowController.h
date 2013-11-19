//
//  SettingsWindowController.h
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Settings.h"
#import "DZTimer.h"

@interface SettingsWindowController : NSWindowController {
    Settings *settings;
}
@property (weak) IBOutlet NSButton *doShortBreaksCheck;
@property (weak) IBOutlet NSPopUpButton *shortBreaksEverySelect;
@property (weak) IBOutlet NSPopUpButton *shortBreaksForSelect;

- (void)restartTimer;
@end
