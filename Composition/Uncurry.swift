//
//  Uncurry.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

// f(a1)(a2) ---> f(a1, a2)
func uncurry<A1, A2, R>(
    _ f: @escaping (A1) -> (A2) -> R
)
-> (A1, A2) -> R {
    { a1, a2 in f(a1)(a2) }
}

func uncurry<A1, A2, R>(
    _ f: @escaping (A1) -> (A2) throws -> R
)
-> (A1, A2) throws -> R {
    { a1, a2 in try f(a1)(a2) }
}

// f(a1)(a2)(a3) ---> f(a1, a2, a3)
func uncurry<A1, A2, A3, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> R
)
-> (A1, A2, A3) -> R {
    { a1, a2, a3 in f(a1)(a2)(a3) }
}

func uncurry<A1, A2, A3, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) throws -> R
)
-> (A1, A2, A3) throws -> R {
    { a1, a2, a3 in try f(a1)(a2)(a3) }
}

// f(a1)(a2)(a3)(a4) ---> f(a1, a2, a3, a4)
func uncurry<A1, A2, A3, A4, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> R
)
-> (A1, A2, A3, A4) -> R {
    { a1, a2, a3, a4 in f(a1)(a2)(a3)(a4) }
}

func uncurry<A1, A2, A3, A4, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) throws -> R
)
-> (A1, A2, A3, A4) throws -> R {
    { a1, a2, a3, a4 in try f(a1)(a2)(a3)(a4) }
}


// f(a1)(a2)(a3)(a4)(a5) ---> f(a1, a2, a3, a4, a5)
func uncurry<A1, A2, A3, A4, A5, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> R
)
-> (A1, A2, A3, A4, A5) -> R {
    { a1, a2, a3, a4, a5 in f(a1)(a2)(a3)(a4)(a5) }
}

func uncurry<A1, A2, A3, A4, A5, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) throws -> R
)
-> (A1, A2, A3, A4, A5) throws -> R {
    { a1, a2, a3, a4, a5 in try f(a1)(a2)(a3)(a4)(a5) }
}

// f(a1)(a2)(a3)(a4)(a5)(a6) ---> f(a1, a2, a3, a4, a5, a6)
func uncurry<A1, A2, A3, A4, A5, A6, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> R
)
-> (A1, A2, A3, A4, A5, A6) -> R {
    { a1, a2, a3, a4, a5, a6 in f(a1)(a2)(a3)(a4)(a5)(a6) }
}

func uncurry<A1, A2, A3, A4, A5, A6, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) throws -> R
)
-> (A1, A2, A3, A4, A5, A6) throws -> R {
    { a1, a2, a3, a4, a5, a6 in try f(a1)(a2)(a3)(a4)(a5)(a6) }
}

// f(a1)(a2)(a3)(a4)(a5)(a6)(a7) ---> f(a1, a2, a3, a4, a5, a6, a7)
func uncurry<A1, A2, A3, A4, A5, A6, A7, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> (A7) -> R
)
-> (A1, A2, A3, A4, A5, A6, A7) -> R {
    { a1, a2, a3, a4, a5, a6, a7 in f(a1)(a2)(a3)(a4)(a5)(a6)(a7) }
}

func uncurry<A1, A2, A3, A4, A5, A6, A7, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> (A7) throws -> R
)
-> (A1, A2, A3, A4, A5, A6, A7) throws -> R {
    { a1, a2, a3, a4, a5, a6, a7 in try f(a1)(a2)(a3)(a4)(a5)(a6)(a7) }
}

// f(a1)(a2)(a3)(a4)(a5)(a6)(a7)(a8) ---> f(a1, a2, a3, a4, a5, a6, a7, a8)
func uncurry<A1, A2, A3, A4, A5, A6, A7, A8, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> (A7) -> (A8) -> R
)
-> (A1, A2, A3, A4, A5, A6, A7, A8) -> R {
    { a1, a2, a3, a4, a5, a6, a7, a8 in f(a1)(a2)(a3)(a4)(a5)(a6)(a7)(a8) }
}

func uncurry<A1, A2, A3, A4, A5, A6, A7, A8, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> (A7) -> (A8) throws -> R
)
-> (A1, A2, A3, A4, A5, A6, A7, A8) throws -> R {
    { a1, a2, a3, a4, a5, a6, a7, a8 in try f(a1)(a2)(a3)(a4)(a5)(a6)(a7)(a8) }
}

// f(a1)(a2)(a3)(a4)(a5)(a6)(a7)(a8)(a9) ---> f(a1, a2, a3, a4, a5, a6, a7, a8, a9)
func uncurry<A1, A2, A3, A4, A5, A6, A7, A8, A9, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> (A7) -> (A8) -> (A9) -> R
)
-> (A1, A2, A3, A4, A5, A6, A7, A8, A9) -> R {
    { a1, a2, a3, a4, a5, a6, a7, a8, a9 in f(a1)(a2)(a3)(a4)(a5)(a6)(a7)(a8)(a9) }
}

func uncurry<A1, A2, A3, A4, A5, A6, A7, A8, A9, R>(
    _ f: @escaping (A1) -> (A2) -> (A3) -> (A4) -> (A5) -> (A6) -> (A7) -> (A8) -> (A9) throws -> R
)
-> (A1, A2, A3, A4, A5, A6, A7, A8, A9) throws -> R {
    { a1, a2, a3, a4, a5, a6, a7, a8, a9 in try f(a1)(a2)(a3)(a4)(a5)(a6)(a7)(a8)(a9) }
}
