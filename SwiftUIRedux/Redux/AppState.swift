//
//  AppStateFe.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import Combine
import ReSwift
import SwiftUI

struct AppState: StateType, Equatable {
    var todo = Todos()
    var users = Users()
}


struct Todos : Identifiable, Equatable {
    static func == (lhs: Todos, rhs: Todos) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    var list: [Todo] = []
}

struct Users : Identifiable, Equatable {
  
    static func == (lhs: Users, rhs: Users) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id = UUID()
    var list: [User] = []
}
