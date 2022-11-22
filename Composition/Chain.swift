//
//  Chain.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

func chain<A, B, C>(
    _ f: @escaping (A) -> B?,
    _ g: @escaping (B) -> C?
)
-> (A) -> C? {
    { a in
        f(a).flatMap(g)
    }
}

func chain<A, B, C>(
    _ f: @escaping (A) throws -> B?,
    _ g: @escaping (B) throws -> C?
)
-> (A) throws -> C? {
    { a in
        try f(a).flatMap(g)
    }
}


func chain<A, B, C, D>(
    _ f: @escaping (A) -> B?,
    _ g: @escaping (B) -> C?,
    _ h: @escaping (C) -> D?
)
-> (A) -> D? {
    { a in
        f(a)
        .flatMap(g)
        .flatMap(h)
    }
}

func chain<A, B, C, D>(
    _ f: @escaping (A) throws -> B?,
    _ g: @escaping (B) throws -> C?,
    _ h: @escaping (C) throws -> D?
)
-> (A) throws -> D? {
    { a in try f(a).flatMap(g).flatMap(h) }
}


func chain<A, B, C, D, E>(
    _ f: @escaping (A) -> B?,
    _ g: @escaping (B) -> C?,
    _ h: @escaping (C) -> D?,
    _ i: @escaping (D) -> E?
)
-> (A) -> E? {
    { a in
        f(a)
        .flatMap(g)
        .flatMap(h)
        .flatMap(i)
    }
}

func chain<A, B, C, D, E>(
    _ f: @escaping (A) throws -> B?,
    _ g: @escaping (B) throws -> C?,
    _ h: @escaping (C) throws -> D?,
    _ i: @escaping (D) throws -> E?
)
-> (A) throws -> E? {
    { a in
        try f(a)
        .flatMap(g)
        .flatMap(h)
        .flatMap(i)
    }
}


func chain<A, B, C, D, E, F>(
    _ f: @escaping (A) -> B?,
    _ g: @escaping (B) -> C?,
    _ h: @escaping (C) -> D?,
    _ i: @escaping (D) -> E?,
    _ j: @escaping (E) -> F?
)
-> (A) -> F? {
    { a in
        f(a)
        .flatMap(g)
        .flatMap(h)
        .flatMap(i)
        .flatMap(j)
    }
}

func chain<A, B, C, D, E, F>(
    _ f: @escaping (A) throws -> B?,
    _ g: @escaping (B) throws -> C?,
    _ h: @escaping (C) throws -> D?,
    _ i: @escaping (D) throws -> E?,
    _ j: @escaping (E) throws -> F?
)
-> (A) throws-> F? {
    { a in
        try f(a)
        .flatMap(g)
        .flatMap(h)
        .flatMap(i)
        .flatMap(j)
    }
}


func chain<A, B, C, D, E, F, G>(
    _ f: @escaping (A) -> B?,
    _ g: @escaping (B) -> C?,
    _ h: @escaping (C) -> D?,
    _ i: @escaping (D) -> E?,
    _ j: @escaping (E) -> F?,
    _ k: @escaping (F) -> G?
)
-> (A) -> G? {
    { a in
        f(a)
        .flatMap(g)
        .flatMap(h)
        .flatMap(i)
        .flatMap(j)
        .flatMap(k)
    }
}

func chain<A, B, C, D, E, F, G>(
    _ f: @escaping (A) throws -> B?,
    _ g: @escaping (B) throws -> C?,
    _ h: @escaping (C) throws -> D?,
    _ i: @escaping (D) throws -> E?,
    _ j: @escaping (E) throws -> F?,
    _ k: @escaping (F) throws -> G?
)
-> (A) throws -> G? {
    { a in
        try f(a)
        .flatMap(g)
        .flatMap(h)
        .flatMap(i)
        .flatMap(j)
        .flatMap(k)
    }
}
