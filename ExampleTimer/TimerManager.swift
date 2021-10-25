//
//  TimerManager.swift
//  ExampleTimer
//
//  Created by Sun on 21/10/2021.
//

import Foundation

class TimerManager {
    
    static let shared = TimerManager()
    var timer = Timer()
    var countTime = 0
    var screenName = ""
    
    private init() { }
    
    @objc private func startTimer() {
        countTime += 1
        print("\n---- debug at \(screenName) ---- count time = ", countTime)
    }
    
    func resetTimer() {
        countTime = 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
    }
    
    func stopTimer(screenName: String) {
        timer.invalidate()
        print("---- debug at \(screenName) ---- Final count time = ", countTime)
    }
}
