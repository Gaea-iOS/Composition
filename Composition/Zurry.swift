//
//  Zurry.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

func zurry<A>(
    _ f: @escaping () throws -> A
) rethrows
-> A {
    try f()
}

func unzurry<A>(
    _ value: @autoclosure @escaping () -> A
)
-> () -> A {
    value
}

func unzurry<A>(
    _ value: @autoclosure @escaping () throws -> A
)
-> () throws -> A {
    value
}
