//
//  main.swift
//  TheCellSell
//
//  Created by 曾梓恒 on 9/30/25.
//

import Foundation
 
// 1. Input
 
// Get number of daytime minutes
var dayTimeMinutes = 251
var nightTimeMinutes = 10
var weekendTimeMinutes = 60

while true {
    
    // Prompt
    print("Number of daytime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    dayTimeMinutes = givenInteger
    break
 
}

while true {
    
    // Prompt
    print("Number of nighttime minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    nightTimeMinutes = givenInteger
    break
 
}

while true {
    
    // Prompt
    print("Number of weekend minutes?")
    
    // Collect input
    guard let givenInput = readLine() else {
        // Repeat prompt, no input given
        continue
    }
    
    // Convert to integer
    guard let givenInteger = Int(givenInput) else {
        // Repeat prompt, not an integer
        continue
    }
    
    // Now we have an integer, break input loop
    weekendTimeMinutes = givenInteger
    break
 
}
 
// 2. Process
 
// Calculate costs for plan A
var a = 0
 
// Add daytime cost
a += (dayTimeMinutes - 100) * 25
a += (nightTimeMinutes * 15)
a += (weekendTimeMinutes * 20)

let resultA = Double(a) / 100

// Calculate costs for plan B
 
// 3. Output
print("Plan A costs \(resultA)")
 
