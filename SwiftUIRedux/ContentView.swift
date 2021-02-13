//
//  ContentView.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TodosScreenView()
                .tabItem({
                           Image("ic_todo")
                           Text("Todo")
                       }).tag(0)
            UsersScreenView()
                .tabItem({
                           Image("ic_user")
                           Text("Usuarios")
                       }).tag(1)
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
