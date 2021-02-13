//
//  TodosScreenView.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI

struct TodosScreenView: View {
    
    @EnvironmentObject var store: BindableStore<AppState>
    @State var active = false
    var body: some View {
        NavigationView {
            Group{
                List(self.store.state.todos.list) { item in
                    TodoItemRow(item:item)
                }
                .navigationBarTitle("Todos")
                .toolbar {
                   Button("Agregar") {
                    store.dispatch(AddTodo())
                   }
                }
                
                NavigationLink(destination: TodoDetailScreenView(), isActive: $active) { EmptyView() }
            }
        }
    }
}

struct TodosScreenView_Previews: PreviewProvider {
    static var previews: some View {
        TodosScreenView()
    }
}
