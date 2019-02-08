//
//  mergesort.swift
//  sort
//
//  Created by Lawrence Herman on 11/13/18.
//  Copyright © 2018 Lawrence Herman. All rights reserved.
//

import Foundation
// A simple MergeSort - shout to RW

let array1 = [5,6,2,8,4,2]
let array2 = [1,2,3,4,5,6,7]
let array3 = [3,7,4,2,2,8,9,9,4,3,5,1,3,2,9,0,2,4]

func mergeSort(_ array: [Int]) -> [Int] {
  
  
  guard array.count > 1 else { return array }
  
  let middleIndex = array.count / 2
  
  //  following commented creates ArraySlice so NG
  //  var array1 = [array[0..<middleIndex]]
  //  var array2 = [array[middleIndex..<array.count]]
  
  let leftArray = mergeSort(Array(array[0..<middleIndex]))
  let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
  
  return merge(leftArray, rightArray)
  
}



func merge(_ left: [Int], _ right: [Int]) -> [Int] {
  
  var leftIndex = 0
  var rightIndex = 0
  
  var orderedArray: [Int] = []
  
  while leftIndex < left.count && rightIndex < right.count {
    
    let leftElement = left[leftIndex]
    let rightElement = right[rightIndex]
    
    if leftElement < rightElement {
      orderedArray.append(leftElement)
      leftIndex += 1
    } else if leftElement > rightElement {
      orderedArray.append(rightElement)
      rightIndex += 1
    } else {
      orderedArray.append(leftElement)
      leftIndex += 1
      orderedArray.append(rightElement)
      rightIndex += 1
    }
  }
  
  while leftIndex < left.count {
    orderedArray.append(left[leftIndex])
    leftIndex += 1
  }
  
  while rightIndex < right.count {
    orderedArray.append(right[rightIndex])
    rightIndex += 1
  }
  
  return orderedArray
  
}

//print(mergeSort(array1))
//mergeSort(array2)
//mergeSort(array3)

