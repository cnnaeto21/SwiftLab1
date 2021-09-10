//
//  ViewController.swift
//  Stopwatch2
//
//  Created by Chukwumaobim Sonne Paul Nnaeto on 9/9/21.
//  Copyright © 2021 Chukwumaobim Sonne Paul Nnaeto. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    let stopwatch = Stopwatch()

    @IBOutlet weak var elapsedTimeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func updateElapsedTimeLabel(timer: Timer) {
      if stopwatch.isRunning {
        elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
      } else {
        timer.invalidate()
      }
    }
    @IBAction func startButtonTapped(sender: UIButton) {
      // code to start the clock
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
        stopwatch.start()
    }

    @IBAction func stopButtonTapped(sender: UIButton) {
      // code to stop the clock
        stopwatch.stop()
    }
}

