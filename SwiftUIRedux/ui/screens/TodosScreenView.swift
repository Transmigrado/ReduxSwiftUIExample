//
//  TodosScreenView.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI

struct TodosScreenView: View {
    
    @EnvironmentObject var store: BindableStore<AppState>
    
    var body: some View {
        NavigationView {
            List(self.store.state.todos.list) { item in
                VStack{
                    Text("\(item.name)")
                    Text("\(item.description)")
                }
           }
           .navigationBarTitle("Todos")
           .toolbar {
               Button("Agregar") {
                store.dispatch(AddTodo())
               }
           }
        }
    }
}

struct TodosScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TodosScreenView()
    }
}
