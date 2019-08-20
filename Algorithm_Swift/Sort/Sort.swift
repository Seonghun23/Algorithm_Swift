//
//  Sort.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 20/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

func sort<T: Comparable>(_ array: [T], type: SortType) -> [T] {
    switch type {
    case .bubble:
        return bubbleSort(array)
    case .selection:
        return selectionSort(array)
    case .quick:
        return quickSort(array)
    }
}

enum SortType {
    case bubble
    case selection
    case quick
}
