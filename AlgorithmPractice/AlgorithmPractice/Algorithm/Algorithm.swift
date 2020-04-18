//
//  Algorithm.swift
//  AlgorithmPractice
//
//  Created by Roy Sparrow on 2020/4/18.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import Foundation

class Algorithm {
    
    /// 判斷在整數陣列中是否有重複的數值
    func hasDuplicatesInIntegerArray(_ intArray: [Int]) -> Bool {
        
        // 需要它來達成取值 O(1)
        var intValueDic: [Int: Int] = [:]
        
        for value in intArray {
            
            // 如果拿得到值，代表重複了
            if intValueDic[value] != nil {
                return true
            }
            
            // 記錄，數值目前無意義
            intValueDic[value] = 1
        }
        return false
    }
}
