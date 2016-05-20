//
//  ViewController.swift
//  StopWatch
//
//  Created by Sam Fisher on 5/7/16.
//  Copyright © 2016 Sam Fisher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var willTimerRun = false

    @IBOutlet weak var textTime: UILabel!
    @IBOutlet weak var toggleButton: UIButton!
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        print(UIFont.familyNames())
        textTime.font = UIFont.init(name: "FFF Tusj", size: 72)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        
        willTimerRun = !willTimerRun
        
        let image = UIImage(named: willTimerRun ? "stop.png" : "start.png")
        
        toggleButton.setImage(image, forState: UIControlState.Normal)
        
        print(willTimerRun ? "The button is ON" : "The button is OFF")
        
        if willTimerRun {
            self.timer = Timer {
                (ticks)->() in
                self.textTime.text = Utils.ticksToTimeString(ticks)
            }
            self.timer.start()
        } else {
            self.timer.stop()
        }
    }

}

