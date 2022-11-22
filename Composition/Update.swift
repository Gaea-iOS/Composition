//
//  Update.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

/*
 Know as |> operator
 */

func update<A>(
    _ a: inout A,
    _ fs: ((inout A) -> Void)...
) {
    fs.forEach { f in f(&a) }
}

func update<A>(
    _ a: inout A,
    _ fs: ((inout A) throws -> Void)...
) throws {
    try fs.forEach { f in try f(&a) }
}


func update<A>(
    _ a: A,
    _ fs: ((inout A) -> Void)...
) -> A {
    var a = a
    fs.forEach { f in f(&a) }
    return a
}

func update<A>(
    _ a: A,
    _ fs: ((inout A) throws -> Void)...
) throws -> A {
    var a = a
    try fs.forEach { f in try f(&a) }
    return a
}


@discardableResult
func update<A: AnyObject>(
    _ a: A,
    _ fs: ((A) -> Void)...
) -> A {
    fs.forEach { f in f(a) }
    return a
}

@discardableResult
func update<A: AnyObject>(
    _ a: A,
    _ fs: ((A) throws -> Void)...
) throws -> A {
    try fs.forEach { f in try f(a) }
    return a
}

                                                                                           
