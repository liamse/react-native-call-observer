//
//  CallObserver.h
//  RNAudio
//
//  Created by Esmaeil on 6/8/18.
//  Copyright © 2018 Joshua Sierles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

#import <CallKit/CXCallObserver.h>
#import <CallKit/CXCall.h>

@interface CallObserverManager : NSObject <RCTBridgeModule, CXCallObserverDelegate>
@property (nonatomic, strong) CXCallObserver *callObserver;


- (id)init;

@end
