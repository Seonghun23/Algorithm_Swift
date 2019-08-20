//
//  Buble Sort.swift
//  Algorithm_Swift
//
//  Created by Seonghun Kim on 20/08/2019.
//  Copyright © 2019 Seonghun Kim. All rights reserved.
//

import Foundation

func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
    var result = array
    
    //기본적인 버블정렬
    //for _ in result.indices {
    //    for j in 0..<result.count-1 {
    //        if result[j] > result[j+1] {
    //            result.swapAt(j, j+1)
    //        }
    //    }
    //}
    
    //시간을 줄이는 방법
    //var flag: Bool = false
    //for _ in result.indices {
    //    flag = false
    //    for j in 0..<result.count-1 {
    //        if result[j] > result[j+1] {
    //            result.swapAt(j, j+1)
    //            flag = true
    //        }
    //    }
    //
    //    if flag == false {
    //        break
    //    }
    //}
    // 만일 1사이클이 다 돌았는데 스왑을 한번도 하지 않았다는 것은 이미 정렬이 되었다는 뜻이다. 그때는 반복을 멈춰도 된다.
    
    //시간을 더 줄이는 방법
    var flag: Bool = false
    for i in result.indices {
        flag = false
        for j in 0..<result.count-(i+1) {
            if result[j] > result[j+1] {
                result.swapAt(j, j+1)
                flag = true
            }
        }
        
        if !flag {
            break
        }
    }
    //매 사이클이 돌 때마다 가장 큰 수가 가장 뒤로 위치하게 된다. 그러므로 i+1번째로 가장 큰 값이 마지막으로 가게 되므로 확인해주지 않아도 된다.
    
    return result
}
