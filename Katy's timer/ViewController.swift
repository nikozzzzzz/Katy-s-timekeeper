//
//  ViewController.swift
//  Katy's timer
//
//  Created by Nikos Papadopulos on 19/08/2018.
//  Copyright © 2018 Nikos Papadopulos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //functions
    func runTimer() {
        timer1 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format:"%02i:%02i", minutes, seconds)
    }
    @objc func updateTimer() {
        seconds -= 1     //This will decrement(count down)the seconds.
        segwayX2TimeLabel.text = timeString(time:TimeInterval (seconds)) //This will update the label.
        print(timeString(time:TimeInterval (seconds)))
    }
    //variables usable by all timers
    var seconds = 600 // time to go

    
    //First rent object
    @IBOutlet weak var segwayX2TimeLabel: UILabel!
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
    
    
    //Second timer 
    
    @IBOutlet weak var secondTimeLabel: UILabel!
    
    @IBAction func secondPlayButton(_ sender: UIButton) {
    }
    
    @IBAction func secondCancelButton(_ sender: UIButton) {
    }
    
    //Third timer
    @IBOutlet weak var thirdTimeLabel: UILabel!
    
    @IBAction func thirdPlayButton(_ sender: UIButton) {
    }
    
    @IBAction func thirdCancelButton(_ sender: UIButton) {
    }
    //Fourth timer
    @IBOutlet weak var fourthTimeLabel: UILabel!
    
    @IBAction func fourthPlayButton(_ sender: UIButton) {
    }
    
    @IBAction func fourthCancelButton(_ sender: UIButton) {
    }
    
    //Fifth timer
    @IBOutlet weak var fifthTimeLabel: UILabel!
    @IBAction func fifthPlayButton(_ sender: UIButton) {
    }
    @IBAction func fifthCancelButton(_ sender: UIButton) {
    }
    
    //Sixth timer
    
    @IBOutlet weak var sixthTimeLabel: UILabel!
    @IBAction func sixthPlayButton(_ sender: UIButton) {
    }
    @IBAction func sixthCancelButton(_ sender: UIButton) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

