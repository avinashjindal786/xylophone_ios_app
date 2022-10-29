//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

import AVFoundation
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        playSound(sender: sender.currentTitle ?? "C")
        print(sender.currentTitle ?? "C")
    }
    
    var player: AVAudioPlayer?

    func playSound(sender:String) {
        let url = Bundle.main.url(forResource: sender, withExtension: "wav")

            player = try! AVAudioPlayer(contentsOf: url!)
            player!.play()

    }
    

}

