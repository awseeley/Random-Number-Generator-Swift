//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by Andrew on 8/04/2016.
//  Copyright © 2016 Seemu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Random number generator example
        let rInt = randomInt(1, max: 6)
        print(rInt) // Will print a random ing from 1-6 to the console
        
        let randDouble = randomDouble(1, max: 10)
        let randFloat = randomFloat(1, max: 10)
        let randCGFloat = randomCGFloat(1, max: 10)
        
        print(randDouble)
        print(randFloat)
        print(randCGFloat)
    }
    
    func randomInt(min: Int, max: Int) -> Int {
        return min + Int(arc4random_uniform(UInt32(max - min + 1)))
    }

    func randomDouble(min: Double, max: Double) -> Double {
        return (Double(arc4random()) / 0xFFFFFFFF) * (max - min) + min
    }
    
    func randomFloat(min: Float, max: Float) -> Float {
        return (Float(arc4random()) / 0xFFFFFFFF) * (max - min) + min
    }
    
    func randomCGFloat(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (max - min) + min
    }
    
    //https://github.com/thellimist/SwiftRandom
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

