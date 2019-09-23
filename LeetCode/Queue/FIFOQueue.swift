//
//  FIFOQueue.swift
//  LeetCode
//
//  Created by mastergu on 2019/9/18.
//  Copyright © 2019年 mastergu. All rights reserved.
//

import Foundation

class Node {
    var data: Any?
    var nextNode: Node?
}

class FIFOQueue {
    var firstNode: Node?
    var endNode: Node = Node()
    
    
    func push(node: Node) {
        if firstNode == nil {
            firstNode = node
        }
        endNode.nextNode = node
        endNode = node
    }
    
    func pop() -> Node? {
        let pop = firstNode
        firstNode = firstNode?.nextNode
        return pop
    }
    
    func popAll() {
        while firstNode != nil {
            print(self.pop()?.data)
        }
    }
}
