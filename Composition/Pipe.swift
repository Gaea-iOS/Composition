//
//  Pipe.swift
//  Composition
//
//  Created by 林锐娜 on 2022/11/22.
//

import Foundation

/*
 Know as >>> operator, for example:
 r = f >>> g >>> h >>> i >>> j >>> k ...
 */

// g(f(a)) --> r(a)
func pipe<A, B, C>(
    _ f: @escaping (A) -> B,
    _ g: @escaping (B) -> C
)
-> (A) -> C {
    { a in g(f(a)) }
}

func pipe<A, B, C>(
    _ f: @escaping (A) throws -> B,
    _ g: @escaping (B) throws -> C
)
-> (A) throws -> C {
    { a in try g(f(a)) }
}


// h(g(f(a))) --> r(a)
func pipe<A, B, C, D>(
    _ f: @escaping (A) -> B,
    _ g: @escaping (B) -> C,
    _ h: @escaping (C) -> D
)
-> (A) -> D {
    { a in h(g(f(a))) }
}

func pipe<A, B, C, D>(
    _ f: @escaping (A) throws -> B,
    _ g: @escaping (B) throws -> C,
    _ h: @escaping (C) throws -> D
)
-> (A) throws -> D {
    { a in try h(g(f(a))) }
}


// i(h(g(f(a)))) --> r(a)
func pipe<A, B, C, D, E>(
    _ f: @escaping (A) -> B,
    _ g: @escaping (B) -> C,
    _ h: @escaping (C) -> D,
    _ i: @escaping (D) -> E
)
-> (A) -> E {
    { a in i(h(g(f(a)))) }
}

func pipe<A, B, C, D, E>(
    _ f: @escaping (A) throws -> B,
    _ g: @escaping (B) throws -> C,
    _ h: @escaping (C) throws -> D,
    _ i: @escaping (D) throws -> E
)
-> (A) throws -> E {
    { a in try i(h(g(f(a)))) }
}

// j(i(h(g(f(a))))) --> r(a)
func pipe<A, B, C, D, E, F>(
    _ f: @escaping (A) -> B,
    _ g: @escaping (B) -> C,
    _ h: @escaping (C) -> D,
    _ i: @escaping (D) -> E,
    _ j: @escaping (E) -> F
)
-> (A) -> F {
    { a in j(i(h(g(f(a))))) }
}

func pipe<A, B, C, D, E, F>(
    _ f: @escaping (A) throws -> B,
    _ g: @escaping (B) throws -> C,
    _ h: @escaping (C) throws -> D,
    _ i: @escaping (D) throws -> E,
    _ j: @escaping (E) throws -> F
)
-> (A) throws -> F {
    { a in try j(i(h(g(f(a))))) }
}


// k(j(i(h(g(f(a)))))) --> r(a)
func pipe<A, B, C, D, E, F, G>(
    _ f: @escaping (A) -> B,
    _ g: @escaping (B) -> C,
    _ h: @escaping (C) -> D,
    _ i: @escaping (D) -> E,
    _ j: @escaping (E) -> F,
    _ k: @escaping (F) -> G
)
-> (A) -> G {
    { a in k(j(i(h(g(f(a)))))) }
}

func pipe<A, B, C, D, E, F, G>(
    _ f: @escaping (A) throws -> B,
    _ g: @escaping (B) throws -> C,
    _ h: @escaping (C) throws -> D,
    _ i: @escaping (D) throws -> E,
    _ j: @escaping (E) throws -> F,
    _ k: @escaping (F) throws -> G
)
-> (A) throws -> G {
    { a in try k(j(i(h(g(f(a)))))) }
}

