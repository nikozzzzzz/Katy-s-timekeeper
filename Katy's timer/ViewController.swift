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
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: false)
    }
    func updateTimer() {
        seconds -= 1     //This will decrement(count down)the seconds.
        segwayX2TimeLabel.text = “\(seconds)” //This will update the label.
    }
    
    @IBOutlet weak var segwayX2TimeLabel: UILabel!
    var seconds = 600 // time to go
    var timer = Timer()
    var isTimerRunning = false //check if timer is already running
    
    @IBAction func segwayX2PlayButton(_ sender: UIButton) {
    }
    
    @IBAction func segwayX2CancelButton(_ sender: UIButton) {
        seconds = 600    // come to this point in time when cancel button is pressed
        segwayX2TimeLabel.text = “\(seconds)”
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

