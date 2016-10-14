//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 58 on 2016/10/13.
//  Copyright © 2016年 58. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.blue
        
        var increment = makeIncrementer()
        
        print("Is it a spicy \(increment(7))?")
        
        let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
        print(statistics.sum)
        print(statistics.min)
        print(statistics.max)
        
        var serverResponseCode: Int? = nil
        
        print("serverResponseCode is \(serverResponseCode)")
        
        let http404Error = (404, "Not Found")
        
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status message is \(statusMessage)")
        
        let http200Status = (statusCode: 200, description: "OK")
        print("The status code is \(http200Status.0)")
        print("The status message is \(http200Status.1)") // 输出 "The status message is OK"
        
        
        let enteredDoorCode = true
        let passedRetinaScan = false
        if enteredDoorCode && passedRetinaScan {
            print("Welcome!")
        } else {
            print("ACCESS DENIED")
        }
    }
    
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }
    
    func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        for score in scores {
            if score > max {
                max = score
            } else if score < min {
                min = score }
            sum += score }
        return (min, max, sum)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

