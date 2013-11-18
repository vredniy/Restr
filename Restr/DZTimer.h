//
//  DZTimer.h
//  TimerDemo
//
//  Created by Dima Zudochkin on 18/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZTimer : NSObject {
    NSTimer *currentTimer;
    
    NSNib *nib;
}
@property (strong) NSWindowController *wc;
@property NSWindow *window;
/*
 1е событие - перерыв в 20 минут
 2е событие - пауза для показа сообщения в течение 5 секунд
 
 по истечении 20 минут запускать 2 событие
 по истечении 5 секунд запускать первый таймер (20 минут)
*/

- (void)startFirstTimer;
- (void)startSecondTimer;

- (void)stopFirstTimer;
- (void)stopSecondTimer;
@end
