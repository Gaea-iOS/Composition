//
//  Concat.swift
//  Composition
//
//  Created by 林锐娜 on 2022/11/22.
//

import Foundation

/*
 Know as <> operator
 */

// f(f(f(a)))... ---> r(a)  a is value type
func concat<A>(
    _ fs: [(A) -> A]
)
-> (A) -> A {
    { a in fs.reduce(a) { a, f in f(a) } }
}

func concat<A>(
    _ fs: [(A) throws -> A]
)
-> (A) throws -> A {
    { a in try fs.reduce(a) { a, f in try f(a) } }
}


func concat<A>(
    _ fs: ((A) -> A)...,
    and fz: @escaping (A) -> A = { $0 }
)
-> (A) -> A {
    concat(fs + [fz])
}

func concat<A>(
    _ fs: ((A) throws -> A)...,
    and fz: @escaping (A) throws -> A = { $0 }
)
-> (A) throws -> A {
    concat(fs + [fz])
}

// f(f(f(&a)))... ---> r(&a)
func concat<A>(
    _ fs: [(inout A) -> Void]
)
-> (inout A) -> Void {
    { a in fs.forEach { f in f(&a) } }
}

func concat<A>(
    _ fs: [(inout A) throws -> Void]
)
-> (inout A) throws -> Void {
    { a in try fs.forEach { f in try f(&a) } }
}

func concat<A>(
    _ fs: ((inout A) -> Void)...,
    and fz: @escaping (inout A) -> Void = { _ in }
)
-> (inout A) -> Void {
    concat(fs + [fz])
}

func concat<A>(
    _ fs: ((inout A) throws -> Void)...,
    and fz: @escaping (inout A) throws -> Void = { _ in }
)
-> (inout A) throws -> Void {
    concat(fs + [fz])
}

// f(f(f(a)))... ---> r(a)  a is reference type
func concat<A: AnyObject>(
    _ fs: [(A) -> Void]
)
-> (A) -> Void {
    { a in fs.forEach { f in f(a) } }
}

func concat<A: AnyObject>(
    _ fs: [(A) throws -> Void]
)
-> (A) throws -> Void {
    { a in try fs.forEach { f in try f(a) } }
}

func concat<A: AnyObject>(
    _ fs: ((A) -> Void)...,
    and fz: @escaping (A) -> Void = { _ in }
)
-> (A) -> Void {
    concat(fs + [fz])
}

func concat<A: AnyObject>(
    _ fs: ((A) throws -> Void)...,
    and fz: @escaping (A) throws -> Void = { _ in }
)
-> (A) throws -> Void {
    concat(fs + [fz])
}

