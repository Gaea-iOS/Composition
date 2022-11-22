//
//  Inout.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

func toInout<A>(
    _ f: @escaping (A) -> A
)
-> (inout A) -> Void {
    { a in a = f(a) }
}

func formInout<A>(
    _ f: @escaping (inout A) -> Void
)
-> (A) -> A {
    { a in
        var copy = a
        f(&copy)
        return copy
    }
}
