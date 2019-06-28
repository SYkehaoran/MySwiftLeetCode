//
//  BinarySearch.swift
//  SuanFa
//
//  Created by 柯浩然 on 2019/6/27.
//  Copyright © 2019 yingjie zhang. All rights reserved.
//

import Foundation
class BinarySearch {
    
   class func binarySearch(num:Int,array:Array<Int>) -> Int {
        if array.count == 0 {
            return -1;
        }
        return binarySearch(num: num, array: array, startIndex: 0, endIndex: array.count-1)
    }
    
    
   class func binarySearch(num:Int,array:Array<Int>,startIndex:Int,endIndex:Int) -> Int {
        
        let middleNum : Int = (startIndex + endIndex) / 2
        
        if startIndex<=endIndex {
            
            if array[middleNum] > num {
                
                return binarySearch(num: num, array: array, startIndex: 0, endIndex: middleNum-1)
            }
            
            if array[middleNum] < num {
                
                return binarySearch(num: num, array: array, startIndex: middleNum+1, endIndex: endIndex)
            }
            return middleNum
        }
        return -1
    }
}
/*
 方法2：不使用递归使用循环
 class func binarySearch(num:Int,array:Array<Int>) -> Int {
 
 var startIndex = 0;
 var endIndex = array.count-1;
 var middleNum = startIndex;
 while array[middleNum] != num {
 
 middleNum = (startIndex + endIndex) / 2
 if array[middleNum] > num {
 
 endIndex = middleNum-1
 }
 
 if array[middleNum] < num {
 
 startIndex = middleNum+1
 }
 }
 
 return middleNum
 }
 */
