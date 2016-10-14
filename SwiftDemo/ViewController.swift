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
        
        
         //for-in 循环来遍历字符串中的 characters 属性
        for character in "Dog!?".characters {
            print(character)
        }
        
         let exclamationMark: Character = "!"
        
        let catCharacters: [Character] = ["C", "a", "t", "!", "?"]
        let catString = String(catCharacters)
        print(catString)
        
        
        //连接字符串和字符
        var string2 = "hello world"
        var instruction = "look over"
        instruction += string2
        
        //let exclamationMark: Character = "!"
        //welcome.append(exclamationMark)
        
        
        //字符串插值 (String Interpolation)
        let multiplier = 3
        let message = "\(multiplier) times \\2.5 is \(Double(multiplier) * 2.5)"
        
        let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
        // "Imageination is more important than knowledge" - Enistein
        let dollarSign = "\u{24}"
        let blackHeart = "\u{2665}"
        let sparklingHeart = "\u{1F496}"
        // $, Unicode 标量 U+0024 // ?, Unicode 标量 U+2665 // ?, Unicode 标量 U+1F496
        
        print(wiseWords+" " + dollarSign + " " + blackHeart + " " + sparklingHeart)
        
        //可扩展的字形群集(Extended Grapheme Clusters)
        let eAcute: Character = "\u{E9}" // é
        let combinedEAcute: Character = "\u{65}\u{301}" // e 后面加上 ? // eAcute 是 é, combinedEAcute 是 é

        

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

