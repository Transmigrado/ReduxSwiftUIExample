//
//  CombineReducer.swift
//  SwiftUIRedux
//
//  Created by Jorge Acosta on 13-02-21.
//

import ReSwift
import Foundation

func combineReducers<T>(_ first: @escaping Reducer<T>, _ remainder: Reducer<T>...) -> Reducer<T> {
    return { action, state in
        let firstResult = first(action, state)
        let result = remainder.reduce(firstResult) { result, reducer in
            return reducer(action, result)
        }
        return result
    }
}
