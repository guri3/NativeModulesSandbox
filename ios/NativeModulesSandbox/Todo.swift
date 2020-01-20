//
//  Todo.swift
//  NativeModulesSandbox
//
//  Created by Oguri Daiki on 2020/01/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

@objc(Todo)
class Todo: NSObject {
  
  private var todos: [String] = []
  
  @objc(addTodo:resolver:rejector:)
  func addTodo(name: String,
               resolver: RCTPromiseResolveBlock,
               rejector: RCTPromiseRejectBlock) -> [String] {
    todos.append(name)
    return todos
  }

  @objc(removeTodo:resolver:rejector:)
  func removeTodo(index: Int,
                  resolver: RCTPromiseResolveBlock,
                  rejector: RCTPromiseRejectBlock) -> [String] {
    todos.remove(at: index)
    return todos
  }
  
  @objc(showTodos)
  func showTodos() -> [String] {
    return todos
  }

}
