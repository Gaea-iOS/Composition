//
//  String.swift
//  Composition
//
//  Created by Jerrywang on 2022/11/22.
//

import Foundation

extension String {
    static var xxxuppercased: (String) -> String {
        zurry(flip(String.uppercased))
    }
}
