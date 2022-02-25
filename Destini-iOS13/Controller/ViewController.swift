//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Евгений Башун on 01.02.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    private var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceButtonPressed(_ sender: UIButton) {
        guard let userAnswer = sender.currentTitle else {return}
        story.nextStory(userAnswer)
        updateUI()
    }
    
    private func updateUI() {
        storyLabel.text = story.getStoryLabel()
        choice1Button.setTitle(story.getButtonTitle(for: 1), for: .normal)
        choice2Button.setTitle(story.getButtonTitle(for: 2), for: .normal)
    }
}

