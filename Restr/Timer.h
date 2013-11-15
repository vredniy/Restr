//
//  Timer.h
//  Restr
//
//  Created by Dima Zudochkin on 15/11/13.
//  Copyright (c) 2013 Dmitry Zudochkin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Timer : NSObject {
    NSTimer *nstimer;
}

@property NSInteger shortBreaksEvery;
@property NSInteger shortBreaksFor;

@property SEL selector;
@property id callee;

- (void)restart;
@end
