//
//  ViewController.swift
//  NavigationBar
//
//  Created by Arsames Qajar on 3/29/16.
//  Copyright © 2016 Arsames Qajar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    var timer = NSTimer()
    var min = 0
    var hour = 0
    var sec = 0
    
    
    @IBAction func pauseThis(sender: AnyObject) {
        timeStopped.text = "\(time) seconds"
        timer.invalidate()
    }
    
    @IBAction func startThis(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
        
        timeStopped.text = "Go!"
    }
    
    
    
    @IBOutlet var timeStopped: UILabel!
    
    
    @IBOutlet var currentTime: UILabel!
    
    
    
    
    
    
    @IBAction func stopTime(sender: AnyObject) {
        timeStopped.text = "\(time) seconds"
        timer.invalidate()
        time = 0
        currentTime.text = "\(time) seconds"
        
    }
    
    
    
    
    func result() {
        time+=1
        print("\(time) has passed")
        
         sec = time % 60
         min = (time / 60) % 60
         hour = time / 3600
        
        currentTime.text = "\(hour): \(min): \(sec) seconds"
        

    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var timer = NSTimer()
//        
//        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.result), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

