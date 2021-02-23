public class ListNode {
     public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    func dec() -> [Int?] {
        var sum: [Int?] = []
        var current: ListNode? = self
       
        while (current != nil) {
            sum.append(current?.val)
            current = current?.next
        }
        
        return sum
    }
 }
 

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        //把两个链表反转
        var emptyNode1 = ListNode()
        var currentIndex1: ListNode? = l1
        var nextNode1: ListNode? = emptyNode1
        while(currentIndex1 != nil) {
            nextNode1?.next = currentIndex1
            nextNode1 = nextNode1?.next
            currentIndex1 = currentIndex1?.next
        }

        emptyNode1 = emptyNode1.next!

        var emptyNode2 = ListNode()
        var currentIndex2: ListNode? = l2
        var nextNode2: ListNode? = emptyNode2
        while(currentIndex2 != nil) {
            nextNode2?.next = currentIndex2
            nextNode2 = nextNode2?.next
            currentIndex2 = currentIndex2?.next
        }

        emptyNode2 = emptyNode2.next!

        currentIndex1 = emptyNode1
        currentIndex2 = emptyNode2

        //进位存储
        var carry: Int = 0
        // 新链
        var resultNode: ListNode = ListNode()
        var currentNode: ListNode? = resultNode
        while((currentIndex1 != nil || currentIndex2 != nil) || carry != 0) {
            var currentValue: Int = 0
            let sumValue = (currentIndex1?.val ?? 0) + (currentIndex2?.val ?? 0) + carry
            if sumValue >= 10 {
                carry = 1
                currentValue = sumValue - 10
            } else {
                carry = 0
                currentValue = sumValue
            }
            currentIndex1 = currentIndex1?.next
            currentIndex2 = currentIndex2?.next

            currentNode?.next = ListNode.init(currentValue)
            currentNode = currentNode?.next
        }

        resultNode = resultNode.next!

        return resultNode
    }
}


let listNode1 = ListNode.init(2, .init(4, .init(9, .init(1))))
let listNode2 = ListNode.init(5, .init(6, .init(4)))
//let listNode1 = ListNode.init(0)
//let listNode2 = ListNode.init(0)

var resultNode = Solution().addTwoNumbers(listNode1, listNode2)?.dec()



