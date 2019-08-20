//
//  Quick Sort.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 20/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

// Quick Sort 기본
func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count/2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

// https://github.com/raywenderlich/swift-algorithm-club/tree/master/Quicksort
// Quick Sort Lomuto
func quickSortLomuto<T: Comparable>(_ array: inout [T], low: Int, high: Int) {
    if low < high {
        let p = partitionLomuto(&array, low: low, high: high)
        quickSortLomuto(&array, low: low, high: p - 1)
        quickSortLomuto(&array, low: p + 1, high: high)
    }
}

func partitionLomuto<T: Comparable>(_ array: inout [T], low: Int, high: Int) -> Int {
    let pivot = array[high]
    
    var i = low
    for j in low..<high {
        if array[j] <= pivot {
            (array[i], array[j]) = (array[j], array[i])
            i += 1
        }
    }
    
    (array[i], array[high]) = (array[high], array[i])
    return i
}

// Quick Sort Hoare
func quickSortHoare<T: Comparable>(_ array: inout [T], low: Int, high: Int) {
    if low < high {
        let p = partitionHoare(&array, low: low, high: high)
        quickSortHoare(&array, low: low, high: p)
        quickSortHoare(&array, low: p + 1, high: high)
    }
}

func partitionHoare<T: Comparable>(_ array: inout [T], low: Int, high: Int) -> Int {
    let pivot = array[low]
    var i = low - 1
    var j = high + 1
    
    while true {
        repeat { j -= 1 } while array[j] > pivot
        repeat { i += 1 } while array[i] < pivot
        
        if i < j {
            array.swapAt(i, j)
        } else {
            return j
        }
    }
}

// Quick Sort Hoare
//func quickSortDutchFlag<T: Comparable>(_ array: inout [T], low: Int, high: Int) {
//    if low < high {
//        let pivotIndex = random(min: low, max: high)
//
//        let (p, q) = partitionDutchFlag(&array, low: low, high: high, pivotIndex: pivotIndex)
//        quickSortDutchFlag(&array, low: low, high: p - 1)
//        quickSortDutchFlag(&array, low: q + 1, high: high)
//    }
//}

//func partitionDutchFlag<T: Comparable>(_ array: inout [T], low: Int, high: Int, pivotIndex: Int) -> (Int, Int) {
//    let pivot = array[pivotIndex]
//
//    var smaller = low
//    var equal = low
//    var larger = high
//
//    while equal <= larger {
//        if array[equal] < pivot {
//            swap(&array, smaller, equal)
//            smaller += 1
//            equal += 1
//        } else if array[equal] == pivot {
//            equal += 1
//        } else {
//            swap(&array, equal, larger)
//            larger -= 1
//        }
//    }
//    return (smaller, larger)
//}
