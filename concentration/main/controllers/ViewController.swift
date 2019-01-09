//
//  ViewController.swift
//  concentration
//
//  Created by Jonathan Trowbridge on 1/9/19.
//  Copyright © 2019 Jonathan Trowbridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let concentration = Concentration(
            emojis: ["👻", "💀", "☠️", "👽", "👾", "🤖"]
    )

    override func viewDidLoad() {
        super.viewDidLoad()

//        let customView = CardView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))

        let margins = view.layoutMarginsGuide
        let containerView = UIView()

        containerView.backgroundColor = UIColor.red

        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false

        view.addConstraints([
            NSLayoutConstraint(item: containerView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 40)
            , NSLayoutConstraint(item: containerView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 40)
            , NSLayoutConstraint(item: containerView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
            , NSLayoutConstraint(item: containerView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
        ])


    }

}

