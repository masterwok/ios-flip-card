//
//  ViewController.swift
//  concentration
//
//  Created by Jonathan Trowbridge on 1/9/19.
//  Copyright © 2019 Jonathan Trowbridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!
    
    private let concentration = Concentration(
            emojis: ["👻", "💀", "☠️", "👽", "👾", "🤖"]
    )

    private var cardContainerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

