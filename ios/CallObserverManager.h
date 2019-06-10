//
//  CallObserver.h
//
//  Created by Esmaeil on 6/8/18.
//

#import <Foundation/Foundation.h>

#if __has_include(<React/RCTBridgeModule.h>)
#import <React/RCTBridgeModule.h>
#else
#import "RCTBridgeModule.h"
#endif

#import <React/RCTEventEmitter.h>

#import <CallKit/CXCallObserver.h>
#import <CallKit/CXCall.h>

@interface CallObserverManager : RCTEventEmitter <CXCallObserverDelegate>
@property (nonatomic, strong) CXCallObserver *callObserver;


- (id)init;

@end
