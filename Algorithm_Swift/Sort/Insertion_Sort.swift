//
//  Insertion_Sort.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 30/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation


func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
    var result = array
    
    for i in 1..<result.count {
        var index = i
        let temp = result[index]
        
        while index > 0 && result[index-1] > temp {
            result[index] = result[index-1]
            index -= 1
        }
        
        result[index] = temp

    }
    
    return result
}   
