//
//  main.swift
//  CodableTest
//
//  Created by Gregory John Casamento on 5/7/24.
//

import Foundation

struct Person : Codable {
    var name : String
    var age : Int
}

var person = Person(name: "Greg", age: 54)
var encoder = JSONEncoder()
var data : Data

do {
    try data = encoder.encode(person)
    let str = String(decoding: data, as: UTF8.self)
    print(str)
}
catch {
    print("Error encoding")
}
