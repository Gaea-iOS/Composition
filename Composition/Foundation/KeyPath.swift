//
//  KeyPath.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

func get<Root, Value>(
    _ keyPath: KeyPath<Root, Value>
)
-> (Root) -> Value {
    { root in root[keyPath: keyPath]}
}

func prop<Root, Value>(
    _ keyPath: WritableKeyPath<Root, Value>
)
-> (@escaping (Value) -> Value) -> (Root) -> Root {
    { update in
        { root in
            var copy = root
            copy[keyPath: keyPath] = update(copy[keyPath: keyPath])
            return copy
        }
    }
}

func over<Root, Value>(
    _ keyPath: WritableKeyPath<Root, Value>,
    _ update: @escaping (Value) -> Value
)
-> (Root) -> Root {
    prop(keyPath)(update)
}

func set<Root, Value>(
    _ keyPath: WritableKeyPath<Root, Value>,
    _ value: Value
)
-> (Root) -> Root {
    over(keyPath, { _ in value })
}

