//
//  CallObserver.m
//  RNAudio
//
//  Created by Esmaeil on 6/8/18.
//  Copyright © 2018 Joshua Sierles. All rights reserved.
//

#import "CallObserverManager.h"

@implementation CallObserverManager {
  bool hasListeners;
}

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"callObserver"];
}

// Will be called when this module's first listener is added.
-(void)startObserving {
  hasListeners = YES;
  // Set up any upstream listeners or background tasks as necessary
}

// Will be called when this module's last listener is removed, or on dealloc.
-(void)stopObserving {
  hasListeners = NO;
  // Remove upstream listeners, stop unnecessary background tasks
}

- (id)init {
  self = [super init];
  if (self) {
    CXCallObserver *co = [[CXCallObserver alloc] init];
    [co setDelegate:self queue:nil];
    self.callObserver = co;
  }
  return self;
}


- (void)callObserver:(nonnull CXCallObserver *)callObserver callChanged:(nonnull CXCall *)call {
  if(hasListeners){
    //incoming
    if (call.isOutgoing == NO  && call.hasConnected == NO && call.hasEnded == NO && call != nil) {
      [self sendEventWithName:@"callObserver" body:@{@"callStatus": @"incoming"}];
    }
    //connected
    if (call.hasConnected == YES && call.hasEnded == NO) {
      [self sendEventWithName:@"callObserver" body:@{@"callStatus": @"connected"}];
    }
    // Ended
    if (call == nil || call.hasEnded == YES) {
      [self sendEventWithName:@"callObserver" body:@{@"callStatus": @"ended"}];
    }
  }
}

@end
