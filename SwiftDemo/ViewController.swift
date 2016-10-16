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

        
        //计算字符数量 (Counting Characters)
        let unusualMenagerie = "Koala ?, Snail ?, Penguin ?, Dromedary ?"
        print("unusualMenagerie has \(unusualMenagerie.characters.count) characters")
        
        
        //字符串索引 (String Indices)
        let greeting = "Guten Tag!"
        greeting[greeting.startIndex]
        // G
       // greeting[greeting.endIndex]
        // !
        //greeting[greeting.startIndex]
        // u
        //let index = greeting.substring(to: <#T##String.Index#>)
        //greeting[index]
        // a
        
        for index in greeting.characters.indices {
            print("\(greeting[index]) ", terminator: " ")
        }
        // 打印输出 "G u t e n T a g !"
        
        var welcome = "hello"
        print(address(o: welcome))
        //print("地址 : \(Unmanaged.passRetained(welcome as AnyObject))")
        welcome.insert("!", at: welcome.endIndex) // welcome now 现在等于 "hello!"
        
        print(address(o: welcome))
        
        //welcome.insert(contentsOf: " there".characters, at: welcome.endIndex.predecessor()) // welcome 现在等于 "hello there!"
        
        //welcome.remove(at: welcome.endIndex) // welcome 现在等于 "hello there"
        
        
        let romeoAndJuliet = [
            "Act 1 Scene 1: Verona, A public place",
            "Act 1 Scene 2: Capulet's mansion",
            "Act 1 Scene 3: A room in Capulet's mansion",
            "Act 1 Scene 4: A street outside Capulet's mansion",
            "Act 1 Scene 5: The Great Hall in Capulet's mansion",
            "Act 2 Scene 1: Outside Capulet's mansion",
            "Act 2 Scene 2: Capulet's orchard",
            "Act 2 Scene 3: Outside Friar Lawrence's cell",
            "Act 2 Scene 4: A street in Verona",
            "Act 2 Scene 5: Capulet's mansion",
            "Act 2 Scene 6: Friar Lawrence's cell"
        ]
        
        
        var act1SceneCount = 0
        for scene in romeoAndJuliet {
            if scene.hasPrefix("Act 1 ") {
                act1SceneCount += 1
            }
        }
        print("There are \(act1SceneCount) scenes in Act 1")
        
        
        var mansionCount = 0
        var cellCount = 0
        for scene in romeoAndJuliet {
            if scene.hasSuffix("Capulet's mansion") {
                mansionCount += 1
            } else if scene.hasSuffix("Friar Lawrence's cell") {
                cellCount += 1
            }
        }
        print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
        
        
        let dogString = "Dog??"
        
        for codeUnit in dogString.utf8 {
            print("\(codeUnit) ", terminator: "")
        }
        print("")
        // 68 111 103 63 63
        
        
        //数组
        var someInts = [Int]()
        print("someInts is of type [Int] with \(someInts.count) items.") // 打印 "someInts is of type [Int] with 0 items."
        someInts.append(3)
        // someInts 现在包含一个 Int 值
        someInts = []
        // someInts 现在是空数组，但是仍然是 [Int] 类型的。
        var threeDoubles = [Double](repeating:0.0, count: 3)
        // threeDoubles 是一种 [Double] 数组，等价于 [0.0, 0.0, 0.0]
        
        
        var shoppingList: [String] = ["Eggs", "Milk"] // shoppingList 已经被构造并且拥有两个初始项。
        
        
        for item in shoppingList {
            print(item)
        }
        
        for (index, value) in shoppingList.enumerated() {
            print("Item \(String(index + 1)): \(value)")
        }
        
        //Set 类型没有确定的顺序
        var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"] // favoriteGenres 被构造成含有三个初始值的集合
        //var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
        print("I have \(favoriteGenres.count) favorite music genres.") // 打印 "I have 3 favorite music genres."
        
        if favoriteGenres.isEmpty {
            print("As far as music goes, I'm not picky.")
        } else {
            print("I have particular music preferences.")
        }
        // 打印 "I have particular music preferences."
        
        favoriteGenres.insert("Jazz")
        // favoriteGenres 现在包含4个元素
        
        if let removedGenre = favoriteGenres.remove("Rock") {
            print("\(removedGenre)? I'm over it.")
        } else {
            print("I never much cared for that.")
        }
        
        if favoriteGenres.contains("Funk") {
            print("I get up on the good foot.")
        } else {
            print("It's too funky in here.")
        }
        // 打印 "It's too funky in here."
            
       //favoriteGenres.removeAll(keepingCapacity: <#T##Bool#>)
            
            
        var oddDigits: Set = [1, 3, 5, 7, 9]
        let evenDigits: Set = [0, 2, 4, 6, 8]
        let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
        oddDigits.union(evenDigits).sorted()
        // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        oddDigits.intersection(evenDigits).sorted()
        // []
        oddDigits.subtract(singleDigitPrimeNumbers);
        // [1, 9]
        oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
            // [1, 2, 9]
        
        var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"] //[String: String] 类型
        print("The dictionary of airports contains \(airports.count) items.")
        // 打印 "The dictionary of airports contains 2 items."
        
        if airports.isEmpty {
            print("The airports dictionary is empty.")
        } else {
            print("The airports dictionary is not empty.")
        }
        
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
            print("The old value for DUB was \(oldValue).")
        }
        
        if let removedValue = airports.removeValue(forKey: "DUB") {
            print("The removed airport's name is \(removedValue).")
        } else {
            print("The airports dictionary does not contain a value for DUB.")
        }
        // prints "The removed airport's name is Dublin Airport."
        
        for (airportCode, airportName) in airports {
            print("\(airportCode): \(airportName)")
        }
        // YYZ: Toronto Pearson
        // LHR: London Heathrow
        
        for airportCode in airports.keys {
            print("Airport code: \(airportCode)")
        }
        // Airport code: YYZ
        // Airport code: LHR
        for airportName in airports.values {
            print("Airport name: \(airportName)")
        }
        // Airport name: Toronto Pearson
        // Airport name: London Heathrow
        
        //循环 while 和 do while
        //repeat {
        //    statements
        //} while condition
        //
        //while condition {
        //    statements
        //}
        
        
        //switch
        
        let someCharacter: Character = "e"
        switch someCharacter {
        case "a", "e", "i", "o", "u":
            print("\(someCharacter) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
             "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            print("\(someCharacter) is a consonant")
        default:
            print("\(someCharacter) is not a vowel or a consonant")
        }
        // 输出 "e is a vowel"
        
        
        let approximateCount = 62
        let countedThings = "moons orbiting Saturn"
        var naturalCount: String
        switch approximateCount {
        case 0:
            naturalCount = "no"
        case 1..<5:
            naturalCount = "a few"
        case 5..<12:
            naturalCount = "several"
        case 12..<100:
            naturalCount = "dozens of"
        case 100..<1000:
            naturalCount = "hundreds of"
        default:
            naturalCount = "many"
        }
        print("There are \(naturalCount) \(countedThings).") // 输出 "There are dozens of moons orbiting Saturn."
        
        
        let somePoint = (0, 1)
        switch somePoint {
        case (0, 0):
            print("(0, 0) is at the origin")
        case (_, 0):
            print("(\(somePoint.0), 0) is on the x-axis")
        case (0, _):
            print("(0, \(somePoint.1)) is on the y-axis")
        case (-2...2, -2...2):
            print("(\(somePoint.0), \(somePoint.1)) is inside the box")
        default:
            print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
        }
        // 输出 "(1, 1) is inside the box"
        
        
        //提前退出
        greet(person: ["name": "John"])
        // prints "Hello John!"
        // prints "I hope the weather is nice near you."
        greet(person: ["name": "Jane", "location": "Cupertino"])
        // prints "Hello Jane!"
        // prints "I hope the weather is nice in Cupertino."
        
        //检测API
        if #available(iOS 9, OSX 10.10, *) {
            // 在 iOS 使用 iOS 9 的 API, 在 OS X 使用 OS X v10.10 的 API
        } else {
            // 使用先前版本的 iOS 和 OS X 的 API
        }
        
        //if #available(platform name version, ..., *) {
        //    statements to execute if the APIs are available
        //} else {
        //    fallback statements to execute if the APIs are unavailable
        //}
        
        print(sayHello(personName: "world"))
        
        print(sayHelloWorld())
        // prints "hello, world"
        
        print(sayHello(personName: "Tim", alreadyGreeted: true))
        // prints "Hello again, Tim!"
        
        let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
        print("min is \(bounds.min) and max is \(bounds.max)")
        // prints "min is -6 and max is 109"
        
        
        //arithmeticMean(numbers: 1, 2, 3, 4, 5)
        // returns 3.0, which is the arithmetic mean of these five numbers
        //arithmeticMean(numbers: 3, 8.25, 18.75)
        // returns 10.0, which is the arithmetic mean of these three numbers
        
        //输入输出参数(In-Out Parameters)
        var someInt = 3
        var anotherInt = 107
        swapTwoInts(a:&someInt, &anotherInt)
        print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
        
    }
    
    //输入输出参数(In-Out Parameters)
    func swapTwoInts( a: inout Int, _ b: inout Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    //常量参数和变量参数(Constant and Variable Parameters)
    
    func alignRight( string: String, totalLength: Int, pad: Character) -> String {
        var string = string
        let amountToPad = totalLength - string.characters.count
        if amountToPad < 1 {
            return string
        }
        let padString = String(pad)
        for _ in 1...amountToPad {
            string = padString + string
        }
        return string
    }

    
    //可变参数(Variadic Parameters)
    
    func arithmeticMean(numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }
    
    //多重返回值函数(Functions with Multiple Return Values)
    func minMax(array: [Int]) -> (min: Int, max: Int) {
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count] {
            if value < currentMin {
                currentMin = value
            } else if value > currentMax {
                currentMax = value
            } }
        return (currentMin, currentMax)
    }
    
    
    func sayHelloAgain(personName: String) -> String {
        return "Hello again, " + personName + "!"
    }
    
    
    func sayHello(personName: String, alreadyGreeted: Bool) -> String {
        if alreadyGreeted {
            return sayHelloAgain(personName: personName)
        } else {
            return sayHello(personName: personName)
        }
    }
    
    func sayHelloWorld() -> String {
        return "hello, world"
    }
    
    func sayHello(personName: String) -> String {
        let greeting = "Hello, " + personName + "!"
        return greeting
    }
    
    func greet(person: [String: String]) {
        guard let name = person["name"] else {
            return
        }
        print("Hello \(name)")
        guard let location = person["location"] else {
            print("I hope the weather is nice near you.")
            return
        }
        print("I hope the weather is nice in \(location).")
    }
    
    func address(o: UnsafeRawPointer) -> String {
        return String.init(format: "%018p", unsafeBitCast(o, to: Int.self))
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

