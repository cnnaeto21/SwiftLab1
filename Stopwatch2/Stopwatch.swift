//
//  Stopwatch.swift
//  Stopwatch2
//
//  Created by Chukwumaobim Sonne Paul Nnaeto on 9/9/21.
//  Copyright © 2021 Chukwumaobim Sonne Paul Nnaeto. All rights reserved.
//

import Foundation

class Stopwatch {
    private var startTime: NSDate?
    func start() {
        startTime = NSDate()
    }

    func stop() {
        startTime = nil
    }

    var elapsedTime: TimeInterval {
        if let startTime = self.startTime{
          return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
        } else {
          return 0
        }
    }

    var elapsedTimeAsString: String {
        // return the formatted string...
        let diffMinutes = Int(elapsedTime / 60)
        let diffSeconds = Int(elapsedTime) % 60
        let milliSeconds = Int(elapsedTime * 10) % 10
        return String(format: "%02d:%02d.%00d", diffMinutes, diffSeconds, milliSeconds )
    }
    var isRunning: Bool {
        if startTime != nil{
            return true
        }
        else{
            return false
        }
    }
   
}
