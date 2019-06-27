//
//  QuickSort.swift
//  SuanFa
//
//  Created by 柯浩然 on 2019/6/27.
//  Copyright © 2019 yingjie zhang. All rights reserved.
//

class QuickSort {
    
    class func sort(item:Array<Int>) -> Array<Int> {
        
        var ret = item
        print("排序开始")
        quickSort(inArr: &ret, low: 0, high: ret.count-1)
        print("排序结束")
        return ret
    }
    
    class private func quickSort(inArr:inout Array<Int>,low:Int, high:Int) {
        
        let mid = partition(array: &inArr, low: low, high: high)
        
        if low < high {
            quickSort(inArr: &inArr, low: 0, high: mid - 1)
            quickSort(inArr: &inArr, low: mid + 1, high: high)
        }
    }
    
    class private func partition(array:inout Array<Int>,low:Int, high:Int) -> Int {
        
        var low = low
        var high = high
        let temp:Int = array[low]
        while low < high {
            
            while low<high && array[high]>=temp {
                high-=1
            }
            array[low] = array[high]
            while low<high && array[low] <= temp {
                low+=1
            }
            array[high] = array[low]
        }
        array[low] = temp
        return low
    }
}
