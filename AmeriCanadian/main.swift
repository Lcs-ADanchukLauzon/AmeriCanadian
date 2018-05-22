//
//  main.swift
//  AmeriCanadian
//

import Foundation

// INPUT
// Global variable to use later in program
var expectedCountOfWordsToTranslate = 0
while true {
    print("How many words will be provided?")
    
    guard let input = readLine() else {
        continue
    }
    
    guard let intIntput = Int(input) else {
        continue
    }
    
    if intIntput < 0 || intIntput > 10 {
        continue
    }
    
    expectedCountOfWordsToTranslate = intIntput
    break
}

if expectedCountOfWordsToTranslate == 0 {
    exit(9)
}

// PROCESS


// NOTE:
//
// Some example code that may be useful



// Example of how to collect multiple input lines
for counter in 1...expectedCountOfWordsToTranslate {
    
    // Get each word
    print("Enter word #\(counter):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
   
    let word = givenInput
    var newWord = ""
    if word.count < 4 {
        print("The translation is \(word)")
    } else if word.hasSuffix("or") {
        for character in 0...word.count - 2 {
            newWord += "\(character)"
       }
        newWord += "o"
        newWord += "u"
        newWord += "r"
        print("The translation is \(newWord)")
    } else {
        print("The translation is \(word)")
    }
    
}

// OUTPUT
// Report results to the user here


