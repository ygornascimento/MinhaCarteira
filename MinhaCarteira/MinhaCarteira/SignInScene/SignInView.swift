//
//  SignInView.swift
//  MinhaCarteira
//
//  Created by Ygor Nascimento on 17/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class SignInView: UIView {
    private let loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Faça seu login automático já com sua conta Apple."
        label.font = UIFont.boldSystemFont(ofSize: 22.0)
        label.textAlignment = .center
        label.numberOfLines = 2
        return label
    }()

    private let loginButton: UIButton = {
        let button = UIButton()
        button.setTitle(" Sign in with Apple", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 6
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 2
        return button
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
        addSubview(loginButton)
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false

        let topAndBottonSpacing = UIScreen.main.bounds.height * 0.250
        let leadingAndTrailingLabelSpacing = CGFloat(50.0)
        let leadingAndTrailingButtonSpacing = CGFloat(80.0)

        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: topAnchor, constant: topAndBottonSpacing),
            loginLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAndTrailingLabelSpacing),
            loginLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -leadingAndTrailingLabelSpacing),

            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: leadingAndTrailingButtonSpacing),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -leadingAndTrailingButtonSpacing),
            loginButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -topAndBottonSpacing),
            loginButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
