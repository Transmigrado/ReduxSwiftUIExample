//
//  TodoReducer.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//


import ReSwift


func todosReducer(action: Action, state: AppState?) -> AppState {
   
    var state = state ?? AppState()
    
    
    
    switch action {
        case _ as AddTodo:
            state.todos.list.append(Todo(name: "Nuevo"))
        default: break
    }
    return state
}
