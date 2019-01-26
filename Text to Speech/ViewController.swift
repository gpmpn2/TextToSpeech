//
//  ViewController.swift
//  Text to Speech
//
//  Created by Maloney, Grant P. (MU-Student) on 1/25/19.
//  Copyright © 2019 Maloney, Grant P. (MU-Student). All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBAction func translateToSpeech(_ sender: Any) {
        let utterance = AVSpeechUtterance(string: textView.text)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance.rate = 0.5
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

