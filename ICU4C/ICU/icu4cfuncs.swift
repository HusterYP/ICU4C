//
//  icu4cfuncs.swift
//  ICU4C
//
//  Created by Ping on 2024/3/16.
//

func icuToUpper(str: String) -> String? {
    let count = str.utf8.count + 1;
    let buff = UnsafeMutablePointer<Int8>.allocate(capacity: count)
    str.withCString { baseAddr in
        buff.initialize(from: baseAddr, count: count)
    }
    let result = UnsafeMutablePointer<Int8>.allocate(capacity: count)
    if 1 == toUpper(buff, result, UInt32(count)) {
        return String(cString: result, encoding: .utf8)
    }
    return nil
}
