//
//  Compose.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

/*
 Know as <<< operator, for example:
 r = f <<< g <<< h <<< i <<< j <<< k ...
 */

// f(g(a)) ---> r(a)
func compose<A, B, C>(
    _ f: @escaping (B) -> C,
    _ g: @escaping (A) -> B
)
-> (A) -> C {
    { a in f(g(a)) }
}

func compose<A, B, C>(
    _ f: @escaping (B) throws -> C,
    _ g: @escaping (A) throws -> B
)
-> (A) throws -> C {
    { a in try f(g(a)) }
}


// f(g(h(a))) ---> r(a)
func compose<A, B, C, D>(
    _ f: @escaping (C) -> D,
    _ g: @escaping (B) -> C,
    _ h: @escaping (A) -> B
)
-> (A) -> D {
    { a in f(g(h(a))) }
}

func compose<A, B, C, D>(
    _ f: @escaping (C) throws -> D,
    _ g: @escaping (B) throws -> C,
    _ h: @escaping (A) throws -> B
)
-> (A) throws -> D {
    { a in try f(g(h(a))) }
}


// f(g(h(i(a)))) ---> r(a)
func compose<A, B, C, D, E>(
    _ f: @escaping (D) -> E,
    _ g: @escaping (C) -> D,
    _ h: @escaping (B) -> C,
    _ i: @escaping (A) -> B
)
-> (A) -> E {
    { a in f(g(h(i(a)))) }
}

func compose<A, B, C, D, E>(
    _ f: @escaping (D) throws -> E,
    _ g: @escaping (C) throws -> D,
    _ h: @escaping (B) throws -> C,
    _ i: @escaping (A) throws -> B
)
-> (A) throws -> E {
    { a in try f(g(h(i(a)))) }
}


// f(g(h(i(j(a))))) ---> r(a)
func compose<A, B, C, D, E, F>(
    _ f: @escaping (E) -> F,
    _ g: @escaping (D) -> E,
    _ h: @escaping (C) -> D,
    _ i: @escaping (B) -> C,
    _ j: @escaping (A) -> B
)
-> (A) -> F {
    { a in f(g(h(i(j(a))))) }
}

func compose<A, B, C, D, E, F>(
    _ f: @escaping (E) throws -> F,
    _ g: @escaping (D) throws -> E,
    _ h: @escaping (C) throws -> D,
    _ i: @escaping (B) throws -> C,
    _ j: @escaping (A) throws -> B
)
-> (A) throws -> F {
    { a in try f(g(h(i(j(a))))) }
}


// f(g(h(i(j(k(a)))))) ---> r(a)
func compose<A, B, C, D, E, F, G>(
    _ f: @escaping (F) -> G,
    _ g: @escaping (E) -> F,
    _ h: @escaping (D) -> E,
    _ i: @escaping (C) -> D,
    _ j: @escaping (B) -> C,
    _ k: @escaping (A) -> B
)
-> (A) -> G {
    { a in f(g(h(i(j(k(a)))))) }
}

func compose<A, B, C, D, E, F, G>(
    _ f: @escaping (F) throws -> G,
    _ g: @escaping (E) throws -> F,
    _ h: @escaping (D) throws -> E,
    _ i: @escaping (C) throws -> D,
    _ j: @escaping (B) throws -> C,
    _ k: @escaping (A) throws -> B
)
-> (A) throws -> G {
    { a in try f(g(h(i(j(k(a)))))) }
}
