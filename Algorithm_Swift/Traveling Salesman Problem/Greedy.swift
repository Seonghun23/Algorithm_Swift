//
//  Greedy.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 23/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

func greedyPath(_ data: [[Int]], startIndex: Int = 0) -> Path<Int> {
    var result = [startIndex]
    var cost = data[startIndex][startIndex]
    
    repeat {
        let startIndex = result.last ?? 0
        var minValue = (index: 0, value: data[startIndex].max() ?? 0)
        
        for (i, v) in data[startIndex].enumerated() {
            if result.contains(i) || startIndex == i {
                continue
            }
            
            if minValue.value > v {
                minValue.index = i
                minValue.value = v
            }
        }
        
        result.append(minValue.index)
        cost += minValue.value
    } while result.count != data.count
    
    return Path<Int>(path: result, cost: cost)
}

struct Path<T> {
    let path: [Int]
    let cost: T
}
