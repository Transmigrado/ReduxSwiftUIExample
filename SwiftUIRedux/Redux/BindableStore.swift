//
//  Store.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import Combine
import SwiftUI
import ReSwift

final class BindableStore<S>: ObservableObject, StoreSubscriber where S: StateType {

    @Published var state: S
    private let store: Store<S>

    func dispatch(_ action: Action) {
        store.dispatch(action)
    }

    init(
        reducer: @escaping Reducer<S>,
        state: S?,
        middleware: [Middleware<S>] = [],
        automaticallySkipsRepeats: Bool = true
        ) {

        store = Store(reducer: reducer,
                      state: state,
                      middleware: middleware,
                      automaticallySkipsRepeats: automaticallySkipsRepeats)

        self.state = store.state

        store.subscribe(self)
    }

    public func newState(state: S) {
        self.state = state
    }
}
