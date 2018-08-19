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
        isTimerRunning = true
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
    

    
    //First timer
    @IBOutlet weak var segwayX2TimeLabel: UILabel!
    var timer1 = Timer()
    var isTimerRunning = false //check if timer is already running
    var seconds = 600 // time to go
    @IBAction func segwayX2PlayButton(_ sender: UIButton) {
        if isTimerRunning == false {
        runTimer()
        }
        
    }
    
    @IBAction func segwayX2CancelButton(_ sender: UIButton) {
        timer1.invalidate()
        seconds = 600    // come to this point in time when cancel button is pressed
        segwayX2TimeLabel.text = timeString(time: TimeInterval(seconds))
        isTimerRunning = false
    }
    
    
    //Second timer 
    
    func runTimer2() {
        timer2 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer2)), userInfo: nil, repeats: true)
        isTimer2Running = true
        
    }
    @objc func updateTimer2() {
        seconds2 -= 1     //This will decrement(count down)the seconds.
        secondTimeLabel.text = timeString(time:TimeInterval (seconds2)) //This will update the label.
        print(timeString(time:TimeInterval (seconds)))
    }
    @IBOutlet weak var secondTimeLabel: UILabel!
    var seconds2 = 600 //same for second button
    var timer2 = Timer()
    var isTimer2Running = false
    @IBAction func secondPlayButton(_ sender: UIButton) {
        if isTimer2Running == false {
        runTimer2()
        }
        
    }
    
    @IBAction func secondCancelButton(_ sender: UIButton) {
        timer2.invalidate()
        seconds2 = 600
        secondTimeLabel.text = timeString(time: TimeInterval(seconds2))
        isTimer2Running = false
    }
    
    //Third timer
    func runTimer3() {
        timer3 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer3)), userInfo: nil, repeats: true)
        isTimer3Running = true
        
    }
    @objc func updateTimer3() {
        seconds3 -= 1     //This will decrement(count down)the seconds.
        thirdTimeLabel.text = timeString(time:TimeInterval (seconds3)) //This will update the label.
        print(timeString(time:TimeInterval (seconds)))
    }
 
    @IBOutlet weak var thirdTimeLabel: UILabel!
    var seconds3 = 600
    var timer3 = Timer()
    var isTimer3Running = false
    
    @IBAction func thirdPlayButton(_ sender: UIButton) {
        if isTimer3Running == false {
        runTimer3()
        }
    }
    
    @IBAction func thirdCancelButton(_ sender: UIButton) {
        timer3.invalidate()
        seconds3 = 600
        thirdTimeLabel.text = timeString(time: TimeInterval(seconds3))
        isTimer3Running = false
    }
    //Fourth timer
    @IBOutlet weak var fourthTimeLabel: UILabel!
    var seconds4 = 600
    var timer4 = Timer()
    var isTimer4Running = false
    func runTimer4() {
        
        timer4 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer4)), userInfo: nil, repeats: true)
        isTimer4Running = true
    }
    @objc func updateTimer4() {
        seconds4 -= 1
        fourthTimeLabel.text = timeString(time:TimeInterval (seconds4))
        
    }
    
    @IBAction func fourthPlayButton(_ sender: UIButton) {
        if isTimer4Running == false {
        runTimer4()
        }
    }
    
    @IBAction func fourthCancelButton(_ sender: UIButton) {
        timer4.invalidate()
        seconds4 = 600
        fourthTimeLabel.text = timeString(time: TimeInterval(seconds4))
        isTimer4Running = false
    }
    
    //Fifth timer
    @IBOutlet weak var fifthTimeLabel: UILabel!
    var seconds5 = 600
    var timer5 = Timer()
    var isTimer5Running = false
    func runTimer5() {
        timer5 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer5)), userInfo: nil, repeats: true)
        isTimer5Running = true
        
    }
    @objc func updateTimer5() {
        seconds5 -= 1     //This will decrement(count down)the seconds.
        fifthTimeLabel.text = timeString(time:TimeInterval (seconds5)) //This will update the label.
       // print(timeString(time:TimeInterval (seconds)))
    }
    @IBAction func fifthPlayButton(_ sender: UIButton) {
        if isTimer5Running == false {
        runTimer5()
        }
        
    }
    @IBAction func fifthCancelButton(_ sender: UIButton) {
        timer5.invalidate()
        seconds5 = 600
        fifthTimeLabel.text = timeString(time: TimeInterval(seconds5))
         isTimer5Running = false

    }
    
    //Sixth timer
    
    @IBOutlet weak var sixthTimeLabel: UILabel!
    var seconds6 = 600
    var timer6 = Timer()
    var isTimer6Running = false
    func runTimer6() {
        timer6 = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer6)), userInfo: nil, repeats: true)
        isTimer6Running = true
    }
    @objc func updateTimer6() {
        seconds6 -= 1     //This will decrement(count down)the seconds.
        sixthTimeLabel.text = timeString(time:TimeInterval (seconds6)) //This will update the label.
        // print(timeString(time:TimeInterval (seconds6)))
    }
    @IBAction func sixthPlayButton(_ sender: UIButton) {
        if isTimer6Running == false {
        runTimer6()
        }
    }
    @IBAction func sixthCancelButton(_ sender: UIButton) {
        timer6.invalidate()
        seconds6 = 600
        sixthTimeLabel.text = timeString(time: TimeInterval(seconds6))
        isTimer6Running = false
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

