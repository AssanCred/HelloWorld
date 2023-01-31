//
//  ViewController.swift
//  HelloWorld
//
//  Created by Артём Латушкин on 26.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10
    }

    @IBAction func greetingTapButton() {
        greetingLabel.isHidden.toggle()
        greetingButton.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "High Greeting",
            for: .normal
        )
    }
    
    
}

