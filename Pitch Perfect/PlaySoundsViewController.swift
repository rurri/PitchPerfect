//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Jason Chambers on 3/7/15.
//  Copyright (c) 2015 Jason Chambers. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!;

    override func viewDidLoad() {
        super.viewDidLoad()
        if var audioPath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var audioUrl = NSURL.fileURLWithPath(audioPath)
            audioPlayer = AVAudioPlayer(contentsOfURL: audioUrl, error: nil)
            audioPlayer.enableRate = true

        } else {
            println("Could not load file")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }
    
    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(1.5)
    }
    
    func playAudio(speed: Float) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0.0
        audioPlayer.rate = speed
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(sender: AnyObject) {
        audioPlayer.stop()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
