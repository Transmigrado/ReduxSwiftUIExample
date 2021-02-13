//
//  Todo.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI

struct Todo {
    var id = UUID()
    var name = ""
    var description = ""
    var user: User?
}
