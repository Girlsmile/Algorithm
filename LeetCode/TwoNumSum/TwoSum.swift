//
//  TwoSum.swift
//  LeetCode
//
//  Created by mastergu on 2019/9/22.
//  Copyright © 2019年 mastergu. All rights reserved.
//

//  Definition for singly-linked list.
  public class ListNode {
      public var val: Int
     public var next: ListNode?
      public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
  }

class Solution {
    
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if var l1 = l1, var l2 = l2 {
            
            var sumNode: ListNode?
            
//            var ponit: ListNode?
            
            var hasCarry = false
            
            while(l1 != nil && l2 != nil) {
                var sum = l1.val + l2.val
                if hasCarry {
                    sum += 1
                }
                
                if sum >= 10 {
                    
                    let carryBit = sum % 10
                    
                    let node = ListNode.init(carryBit)
                    
                    if sumNode == nil {
                        sumNode = node
                    } else {
                        sumNode?.next = node
                    }
                    
                    print(sumNode?.val)
                    sumNode = sumNode?.next
                    
                    hasCarry = true
                    
                } else {
                    
                    let node = ListNode.init(sum)
                    
                    if sumNode == nil {
                        sumNode = node
                    } else {
                        sumNode?.next = node
                    }
                    print(sumNode?.val)
                    sumNode = sumNode?.next
                    
                    hasCarry = false
                }
                
                if l1.next == nil && l2.next != nil {
                    l1.next = ListNode.init(0)
                }
                
                if l1.next != nil && l2.next == nil {
                    l2.next = ListNode.init(0)
                }
                
                if let _ = l1.next , let _ = l2.next {
                    l1 = l1.next!
                    l2 = l2.next!
                    
                    
                } else {
                    break
                }
                
                
                
                
                
                
            }
            
            if hasCarry {
                sumNode?.next = ListNode.init(1)
            }
            
            return sumNode
            
            
        } else {
            return nil
            
        }
        
        
        
       
    }
}
