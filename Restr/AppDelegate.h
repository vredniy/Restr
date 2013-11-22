//
//  AppDelegate.h
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
}

@property (strong) NSWindowController *settingsWindowController;

@end
