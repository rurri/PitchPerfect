//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Jason Chambers on 3/5/15.
//  Copyright (c) 2015 Jason Chambers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var microphoneButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        stopButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        stopButton.hidden = false
        recordingLabel.hidden = false
        microphoneButton.hidden = true
    }
    
    @IBAction func stopRecord(sender: UIButton) {
        recordingLabel.hidden = true
        stopButton.hidden = true
        microphoneButton.hidden = false
    }

}

