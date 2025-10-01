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
a += max(dayTimeMinutes - 100, 0) * 25
a += (nightTimeMinutes * 15)
a += (weekendTimeMinutes * 20)

let resultA = Double(a) / 100

// Calculate costs for plan B
var b = 0

// Add daytime cost
b += max(dayTimeMinutes - 250, 0) * 45
b += nightTimeMinutes * 35
b += weekendTimeMinutes * 25

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
