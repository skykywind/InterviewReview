//
//  BasicData_3_1.swift
//  iOS_interview
//
//  Created by JH on 2019/3/11.
//  Copyright © 2019 Jia. All rights reserved.
//

import Foundation

// 数组实现栈
class Stack {
    var stack: [AnyObject]
    var isEmpty: Bool { return stack.isEmpty }
    var peek: AnyObject? { return stack.last }
    
    init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        if !isEmpty {
            return stack.removeLast()
        } else {
            return nil
        }
    }
}

// 给一个整型数组和一个目标值，判断数组中是否有两个数字之和等于目标值
func twoSum(nums: [Int], _ target: Int) -> Bool {
    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target - num) {
            return true
        }
        set.insert(num)
    }
    
    return false
}

// 给定一个整型数组中有且仅有两个数字之和等于目标值，求两个数字在数组中的序号
func twoSumIndex(_ nums: [Int], _ target: Int) -> [Int]? {
    var dic = [Int: Int]()
    
    for(i, num) in nums.enumerated() {
        if let lastIndex = dic[target - num] {
            return [lastIndex, i]
        } else {
            dic[num] = i
        }
    }
    
    return nil
}

// 给一个字符串，将其按照单词顺序进行反转。比如说 s 是 "the sky is blue", 那么反转就是 "blue is sky the"。
fileprivate func reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int) {
    var start = start, end = end
    
    while start < end {
        swap(&chars, start, end)
        start += 1
        end -= 1
    }
}

fileprivate func swap<T>(_ chars: inout [T], _ p: Int, _ q: Int) {
    (chars[p], chars[q]) = (chars[q], chars[p])
}

func reverseWords(s: String?) -> String? {
    guard let s = s else {
        return nil
    }
    
    var chars = Array(s), start = 0
    reverse(&chars, 0, chars.count - 1)
    
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " " {
            reverse(&chars, start, i)
            start = i + 2
        }
    }
    
    return String(chars)
}
