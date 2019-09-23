//
//  AppDelegate.swift
//  LeetCode
//
//  Created by mastergu on 2019/9/18.
//  Copyright © 2019年 mastergu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let rootVc = ViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = UINavigationController.init(rootViewController: rootVc)
        window?.makeKeyAndVisible()
        
        let list = ListNode.init(4)
        list.next = ListNode.init(4)
        list.next?.next = ListNode.init(3)
        
        let list1 = ListNode.init(5)
        list1.next = ListNode.init(6)
        list1.next?.next = ListNode.init(6)
        list1.next?.next?.next = ListNode.init(3)
        
         let l = Solution.addTwoNumbers(list, list1 )
        
//        let q = FIFOQueue()
//
//        let deNode = Node()
//        deNode.data = "111"
//        q.push(node: deNode)
//        let dNode = Node()
//        dNode.data = "222"
//        let d2Node = Node()
//        d2Node.data = "33333222"
//        let d3Node = Node()
//        d3Node.data = "111"
//        q.push(node: dNode)
//        q.push(node: d2Node)
//        q.push(node: d3Node)
//        q.popAll()
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

