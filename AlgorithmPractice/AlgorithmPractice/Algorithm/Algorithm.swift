//
//  Algorithm.swift
//  AlgorithmPractice
//
//  Created by Roy Sparrow on 2020/4/18.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import Foundation

/// 演算法練習用 class
class Algorithm {
    
    /// 判斷在整數陣列中是否有重複的數值
    func hasDuplicatesInIntegerArray(_ intArray: [Int]) -> Bool {
        
        // 需要它來達成取值 O(1)，以及判斷是否重複
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
    
    /// 合併兩個已排序過的陣列，回傳結果也是排序好的
    func combineTwoSortedArray(first firstArray: [Int], andSecond secondArray: [Int]) -> [Int] {
        let firstArrayCount = firstArray.count
        let secondArrayCount = secondArray.count
        let totalCount = firstArrayCount+secondArrayCount
        
        // 建立固定大小的陣列
        var finalArray = [Int](repeating: 0, count: totalCount)
        
        // 第一個陣列要進行比較的 index
        var firstArrayCompareIndex = 0
        
        // 第二個陣列要進行比較的 index
        var secondArrayCompareIndex = 0
        
        for i in 0..<finalArray.count {
            var willAddValue: Int
            if firstArrayCompareIndex == firstArrayCount {
                
                // 代表第一個陣列塞完了，剩第二個陣列的值
                willAddValue = secondArray[secondArrayCompareIndex]
                secondArrayCompareIndex += 1
            } else if secondArrayCompareIndex == secondArrayCount {
                
                // 代表第二個陣列塞完了，剩第一個陣列的值
                willAddValue = firstArray[firstArrayCompareIndex]
                firstArrayCompareIndex += 1
            } else {
                let firstValue = firstArray[firstArrayCompareIndex]
                let secondValue = secondArray[secondArrayCompareIndex]
                if firstValue < secondValue {
                    willAddValue = firstValue
                    firstArrayCompareIndex += 1
                } else {
                    willAddValue = secondValue
                    secondArrayCompareIndex += 1
                }
            }
            finalArray[i] = willAddValue
        }
        return finalArray
    }
}
