//
//  Todo.m
//  NativeModulesSandbox
//
//  Created by Oguri Daiki on 2020/01/21.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Todo, NSObject)

RCT_EXTERN_METHOD(addTodo:(NSString *)name resolver:(RCTPromiseResolveBlock)resolve rejector:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(removeTodo:(NSNumber *)index resolver:(RCTPromiseResolveBlock)resolve rejector:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(showTodos)

@end
