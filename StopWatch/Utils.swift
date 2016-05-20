//
//  Utils.swift
//  StopWatch
//
//  Created by Sam Fisher on 5/7/16.
//  Copyright © 2016 Sam Fisher. All rights reserved.
//

import Foundation

class Utils {
    
    static func ticksToTimeString(ticks: Int) -> String {
        let minutes: Int = ticks / 60
        let seconds: Int = ticks % 60
        return String.init(format: "%02d:%02d", minutes, seconds)
    }
    
}