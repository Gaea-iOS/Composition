//
//  Flip.swift
//  Composition
//
//  Created by 林锐娜 on 2022/11/21.
//

import Foundation

// f(a1)() ---> f()(a1)
func flip<A1, R>(
    _ f: @escaping (A1) -> () -> R
)
-> () -> (A1) -> R {
    { { a1 in f(a1)() } }
}

func flip<A1, R>(
    _ f: @escaping (A1) -> () throws -> R
)
-> () -> (A1) throws -> R {
    { { a1 in try f(a1)() } }
}

// f(a1)(a2) ---> f(a2)(a1)
func flip<A1, A2, R>(
    _ f: @escaping (A1) -> (A2) -> R
)
-> (A2) -> (A1) -> R {
    { a2 in { a1 in f(a1)(a2) } }
}

func flip<A1, A2, R>(
    _ f: @escaping (A1) -> (A2) throws -> R
)
-> (A2) -> (A1) throws -> R {
    { a2 in { a1 in try f(a1)(a2) } }
}

// f(a1)(a2, a3) ---> f(a2, a3)(a1)
func flip<A1, A2, A3, R>(
    _ f: @escaping (A1) -> (A2, A3) -> R
)
-> (A2, A3) -> (A1) -> R {
    { (a2, a3) in { a1 in f(a1)(a2, a3) } }
}

func flip<A1, A2, A3, R>(
    _ f: @escaping (A1) -> (A2, A3) throws -> R
)
-> (A2, A3) -> (A1) throws -> R {
    { (a2, a3) in { a1 in try f(a1)(a2, a3) } }
}

// f(a1)(a2, a3, a4) ---> f(a2, a3, a4)(a1)
func flip<A1, A2, A3, A4, R>(
    _ f: @escaping (A1) -> (A2, A3, A4) -> R
)
-> (A2, A3, A4) -> (A1) -> R {
    { (a2, a3, a4) in { a1 in f(a1)(a2, a3, a4) } }
}

func flip<A1, A2, A3, A4, R>(
    _ f: @escaping (A1) -> (A2, A3, A4) throws -> R
)
-> (A2, A3, A4) -> (A1) throws -> R {
    { (a2, a3, a4) in { a1 in try f(a1)(a2, a3, a4) } }
}

// f(a1)(a2, a3, a4, a5) ---> f(a2, a3, a4, a5)(a1)
func flip<A1, A2, A3, A4, A5, R>(
    _ f: @escaping (A1) -> (A2, A3, A4, A5) -> R
)
-> (A2, A3, A4, A5) -> (A1) -> R {
    { (a2, a3, a4, a5) in { a1 in f(a1)(a2, a3, a4, a5) } }
}

func flip<A1, A2, A3, A4, A5, R>(
    _ f: @escaping (A1) -> (A2, A3, A4, A5) throws -> R
)
-> (A2, A3, A4, A5) -> (A1) throws -> R {
    { (a2, a3, a4, a5) in { a1 in try f(a1)(a2, a3, a4, a5) } }
}
