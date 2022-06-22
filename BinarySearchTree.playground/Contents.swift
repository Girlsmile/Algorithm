import UIKit
/// 实现一颗 查找树
class TreeNode {
    var val = 0
    var left: TreeNode?
    var right: TreeNode?
}

var rootTree = TreeNode()
rootTree.val = 13

rootTree.left = TreeNode()
rootTree.left?.val = 10

rootTree.right = TreeNode()
rootTree.right?.val = 16

rootTree.right?.left = TreeNode()
rootTree.right?.left?.val = 14

rootTree.left?.left = TreeNode()
rootTree.left?.left?.val = 9

rootTree.left?.right = TreeNode()
rootTree.left?.right?.val = 11

func logNode(root: TreeNode?) {
    if root == nil {
        return
    }
    print(root!.val)
    logNode(root: root!.left)
    logNode(root: root!.right)
}


func floorNode(root: TreeNode?) {
    var queue: [TreeNode] = []
    queue.append(root!)
    while(queue.count > 0) {
        let bottomNode = queue.removeFirst()
        print(bottomNode.val)
        if let left = bottomNode.left {
            queue.append(left)
        }
        
        if let right = bottomNode.right {
            queue.append(right)
        }
    }
}


func find(_ target: Int, root: TreeNode?) -> Bool {
    
    var result = false
    
    func check(_ root: TreeNode?) {
        guard let root = root else {
            return
        }
        
        guard !result else {
            return
        }
        
        if target == root.val {
            result = true
            return
        }
        
        if target < root.val {
            check(root.left)
        }
        
        if target > root.val {
            check(root.right)
        }
    }
    
    check(root)
    
    return result
    
}

print(find(0, root: rootTree))



func insert(_ target: Int, root: TreeNode?) -> TreeNode? {
    
    var node = root
    
    func check(_ rootNode: inout TreeNode?) {
        guard let rootVal = rootNode?.val else {
            return
        }
        
        if target < rootVal {
            if root?.left == nil {
                let node = TreeNode()
                node.val = target
                rootNode?.left = node
            } else {
                check(&rootNode!.left)
            }
        }
        
        if target > rootVal {
            if rootNode?.right == nil {
                let node = TreeNode()
                node.val = target
                rootNode?.right = node
            } else {
                check(&rootNode!.right)
            }
        }
    }
    
    check(&node)
    
    return node
    
}
floorNode(root: rootTree)
rootTree = insert(15, root: rootTree)!
print(find(15, root: rootTree))
floorNode(root: rootTree)

// TODO
func delete(_ target: Int, root: TreeNode?) -> TreeNode? {
    var targetNode: TreeNode? = nil
    var currentNode = root
    while(targetNode == nil && currentNode != nil) {
        if currentNode!.val == target {
            targetNode = currentNode
        }
    }
}
