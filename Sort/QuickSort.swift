//
//  QuickSort.swift
//  Sort
//
//  Created by Takamiya Kengo on 2021/03/13.
//

import Foundation


func quickSort<T: Comparable>(_ arr: [T], _ comparator: (T, T) -> Bool) -> [T] {
  guard arr.count > 1 else { return arr }
  var base = arr[0]
  var sortedLeft : [T] = []
  var sortedRight : [T] = []
  for i in 1...arr.count-1 {
    if comparator(arr[i],base) {
      sortedRight.append(arr[i])
    } else {
      sortedLeft.append(arr[i])
    }
  }
  sortedRight.append(base)
  return quickSort(sortedLeft,comparator) + quickSort(sortedRight, comparator)
}
