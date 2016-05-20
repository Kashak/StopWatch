//
//  Timer.swift
//  StopWatch
//
//  Created by Sam Fisher on 5/7/16.
//  Copyright © 2016 Sam Fisher. All rights reserved.
//

import Foundation

class Timer {
    
    var timer = NSTimer()
    var handler: (Int)->()
    var tickCount: Int = 0
    
    init(handler: (Int)->()) {
        print("Init timer")
        self.handler = handler
    }
    
    func start() {
        print("Start timer")
        self.tickCount = 0
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(Timer.onTick), userInfo: nil, repeats: true)
        self.timer.fire()
    }
    
    func stop() {
        print("Stop timer")
        self.timer.invalidate()
    }
    
    @objc func onTick() {
        print("onTick")
        self.tickCount += 1
        self.handler(self.tickCount)
    }
    deinit {
        print("Timer was invalidated from deinit")
        self.timer.invalidate()
    }
    
}