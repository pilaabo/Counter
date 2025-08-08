//
//  ViewController.swift
//  Counter
//
//  Created by Vladimir Generalov on 08.08.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countValueLabel: UILabel!
    
    @IBOutlet weak var incrementCountButton: UIButton!
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func tapIncrementCountButton() {
        count += 1
        countValueLabel.text = "\(count)"
    }
}
