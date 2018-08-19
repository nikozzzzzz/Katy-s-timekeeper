//
//  ViewController.swift
//  Katy's timer
//
//  Created by Nikos Papadopulos on 19/08/2018.
//  Copyright © 2018 Nikos Papadopulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    func runTimer() {
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    func timeString(time:TimeInterval) -> String {
        let hours = Int(time) / 3600
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    @objc func updateTimer() {
        seconds -= 1     //This will decrement(count down)the seconds.
        segwayX2TimeLabel.text = timeString(time:TimeInterval (seconds)) //This will update the label.
        print(timeString(time:TimeInterval (seconds)))
    }
    
    //First rent object
    @IBOutlet weak var segwayX2TimeLabel: UILabel!
    var seconds = 600 // time to go
    var timer1 = Timer()
    var isTimerRunning = false //check if timer is already running
    
    @IBAction func segwayX2PlayButton(_ sender: UIButton) {
        runTimer()
        
    }
    
    @IBAction func segwayX2CancelButton(_ sender: UIButton) {
        timer1.invalidate()
        seconds = 600    // come to this point in time when cancel button is pressed
        segwayX2TimeLabel.text = timeString(time: TimeInterval(seconds))
    }
    
    
    //Second rent object
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

