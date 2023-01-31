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
        greetingButton.configuration = setupButton(with: "Show Greeting")
        
    }

    @IBAction func greetingTapButton() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with:  greetingLabel.isHidden ? "Show Greeting" : "High Greeting"
        )
    }
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = title
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.1306532663, green: 0.5, blue: 0.2236180905, alpha: 1)
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
    
}

