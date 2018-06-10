//
//  CallObserver.m
//  RNAudio
//
//  Created by Esmaeil on 6/8/18.
//  Copyright © 2018 Joshua Sierles. All rights reserved.
//

#import "CallObserverManager.h"

@implementation CallObserverManager

RCT_EXPORT_MODULE();

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
  if (call.hasConnected) {
    // perform necessary actions
    NSLog(@"APPState: call has connected");
    
  }
  if (call.hasEnded){
    NSLog(@"APPState: call ended");
    
  }
}

@end
