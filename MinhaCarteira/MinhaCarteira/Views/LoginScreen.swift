//
//  LoginScreen.swift
//  MinhaCarteira
//
//  Created by Ygor Nascimento on 17/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class LoginView: UIView {
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Faça seu login automático já com sua conta Apple"
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLoginView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLoginView()
    }

    private func setupLoginView() {
        addSubview(loginLabel)

        NSLayoutConstraint.activate([
            loginLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
