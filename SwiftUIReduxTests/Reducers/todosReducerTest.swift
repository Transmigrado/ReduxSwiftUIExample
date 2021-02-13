//
//  todosReducerTest.swift
//  SwiftUIReduxTests
//
//  Created by Jorge Acosta on 13-02-21.
//

import XCTest
@testable import SwiftUIRedux
import ReSwift

class todosReducerTest: XCTestCase {

    override func setUpWithError() throws {
       
    }

    override func tearDownWithError() throws {
       
    }

    func testAddTodo() throws {
        let state = todosReducer(action: AddTodo(), state: AppState())
        XCTAssertEqual(state.todos.list.count, 1, "Agregamos un elemento a la lista de todos")
    }
    
    func testReducerWithEmptyState(){
        let state = todosReducer(action: AddTodo(), state: nil)
        XCTAssertNotNil(state)
    }
    
    func testReducerWithActionUnkwon(){
        let emptyState = AppState()
        let state = todosReducer(action: MockAction(), state: emptyState)
        XCTAssertEqual(state, emptyState, "No se produce ningún cambio")
    }

}

struct MockAction: Action {}
