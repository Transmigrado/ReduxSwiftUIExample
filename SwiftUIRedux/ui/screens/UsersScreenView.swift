//
//  UsersScreenView.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import SwiftUI

struct UsersScreenView: View {
    
    @EnvironmentObject var store: BindableStore<AppState>
    
    var body: some View {
        NavigationView {
           List {
             Text("Hola")
           }
           .navigationBarTitle("Usuarios")
                 
        }
    }
}

struct UsersScreenView_Previews: PreviewProvider {
    static var previews: some View {
        UsersScreenView()
    }
}
