//
//  main.swift
//  TheCellSell
//
//  Created by 曾梓恒 on 9/30/25.
//

import Foundation

// 1. Input
 
// Get daytime minutes
let dayTimeMinutes = getInput(withPrompt: "Number of daytime minutes? ",
                       minimum: 0,
                       maximum: nil)
 
// Get evening minutes
let nightTimeMinutes = getInput(withPrompt: "Number of evening minutes? ",
                           minimum: 0,
                           maximum: nil)
 
// Get weekend minutes
let weekendMinutes = getInput(withPrompt: "Number of weekend minutes? ",
                           minimum: 0,
                           maximum: nil)

// Functions
func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}
 
// 2. Process
 
// Calculate costs for plan A
var a = 0
 
// Add daytime cost
a += max(dayTimeMinutes - 100, 0) * 25
a += (nightTimeMinutes * 15)
a += (weekendMinutes * 20)

let resultA = Double(a) / 100

// Calculate costs for plan B
var b = 0

// Add daytime cost
b += max(dayTimeMinutes - 250, 0) * 45
b += nightTimeMinutes * 35
b += weekendMinutes * 25

let resultB = Double(b) / 100
 
// 3. Output
print("Plan A costs \(resultA)")
print("Plan B costs \(resultB)")

if resultA == resultB {
    print("Plan A and B are the same price.")
} else if resultA < resultB {
    print("Plan A is cheapest.")
} else {
    print("Plan B is cheapest.")
}
