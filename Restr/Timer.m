//
//  Timer.m
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import "Timer.h"

@implementation Timer


- (void)restart
{
    NSLog(@"restarted");
    if (nstimer) {
        [nstimer invalidate];
        nstimer = nil;
    }
    
    nstimer = [NSTimer timerWithTimeInterval:self.shortBreaksEvery target:self.callee selector:self.selector userInfo:nil repeats:NO];
    
    
        //[NSTimer timerWithTimeInterval:1 target:self selector:@selector(shortBreak:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:nstimer forMode:NSDefaultRunLoopMode];
}

@end
