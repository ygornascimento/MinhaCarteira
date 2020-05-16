//
//  ViewController.swift
//  MinhaCarteira
//
//  Created by Ygor Nascimento on 09/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let titleLabel: UILabel = {
            let view = UILabel()
            view.text = "algo deu errado"
            view.font = UIFont.boldSystemFont(ofSize: 16.0)
            view.adjustsFontSizeToFitWidth = true
            view.textColor = #colorLiteral(red: 0.1647058824, green: 0.1647058824, blue: 0.1647058824, alpha: 1)
            return view
        }()

        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        ])

        view.addSubview(titleLabel)
    }


}

