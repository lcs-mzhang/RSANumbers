//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var l = 0
var u = 0
var numberOfRSA = 0

// INPUT
// Collect and filter user input here

while true
{
    print("Enter lower limit of range")
    guard let givenLowerInput = readLine() else {
        continue
    }
    guard let lowerInput = Int(givenLowerInput) else {
        continue
    }
    if lowerInput < 1 || lowerInput > 1000 {
        continue
    }
    l = lowerInput
    break
}
while true
{
    print("Enter upper limit of range")
    guard let givenUpperInput = readLine() else {
        continue
    }
    guard let upperInput = Int(givenUpperInput) else {
        continue
    }
    if upperInput < 1 || upperInput > 1000 {
        continue
    }
    u = upperInput
    break
}

// PROCESS
// Implement the primary logic of the problem here

for checkingNumber in l...u {
    var numberOfFactors = 0
    for i in 1...checkingNumber {
        if checkingNumber%i == 0 {
            numberOfFactors += 1
        }
    }
    if numberOfFactors == 4 {
        numberOfRSA += 1
    }
}

// OUTPUT
// Report results to the user here

print("The number of RSA numbers between \(l) and \(u) is \(numberOfRSA)")
