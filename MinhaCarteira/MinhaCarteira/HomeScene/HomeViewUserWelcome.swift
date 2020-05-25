//
//  HomeViewUserWelcome.swift
//  MinhaCarteira
//
//  Created by Ygor Nascimento on 25/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class HomeViewUserWelcome: UIView {

    private let userNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Olá usuário!"
        label.font = UIFont.boldSystemFont(ofSize: 22.0)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
}
