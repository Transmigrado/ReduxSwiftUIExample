//
//  SwiftUIReduxApp.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI
import ReSwift

let reducer = combineReducers(
    todosReducer,
    usersReducer
)

let store = BindableStore<AppState>(reducer: reducer, state: AppState())

@main
struct SwiftUIReduxApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
