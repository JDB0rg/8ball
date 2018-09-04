//
//  ViewController.swift
//  8ball
//
//  Created by Madison Waters on 9/4/18.
//  Copyright © 2018 Jonah Bergevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answerLabel: UILabel!
    
    private let answers = [
        "It is certain.",
        "It is decidedly so.",
        "Without a doubt.",
        "Yes - definitely.",
        "You may rely on it.",
        "As I see it, yes.",
        "Most likely.",
        "Outlook good.",
        "Yes.",
        "Signs point to yes.",
        "Reply hazy, try again",
        "Ask again later.",
        "Better not tell you now.",
        "Cannot predict now.",
        "Concentrate and ask again.",
        "Don’t count on it.",
        "My reply is no.",
        "My sources say no",
        "Outlook not so good.",
        "Very doubtful.",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func eightBallButton(_ sender: Any) {
        let index = Int(arc4random_uniform(UInt32(answers.count)))
     
        let answer = answers[index]
        
        answerLabel.text = answer
    }
}

