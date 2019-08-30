//
//  main.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 20/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

func createRandomArray(numberOfElements: Int = 10) -> [Int] {
    var randomIntInArray = [Int]()
    
    while randomIntInArray.count != numberOfElements {
        let popRandomValue = Int(arc4random_uniform(11))
        randomIntInArray.append(popRandomValue)
    }
    
    return randomIntInArray
}
