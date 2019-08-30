//
//  Selection Sort.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 20/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

func selectionSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    var result = array
    
    for i in result.indices {
        var min = result[i]
        var index = i
        
        for j in i+1..<result.count {
            if min > result[j] {
                min = result[j]
                index = j
            }
        }
        
        if i != index {
            result.swapAt(i, index)
        }
    }

    return result
}
