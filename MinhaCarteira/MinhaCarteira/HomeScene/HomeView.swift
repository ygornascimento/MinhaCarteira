//
//  HomeView.swift
//  MinhaCarteira
//
//  Created by Ygor Nascimento on 25/05/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

class HomeView: UIView {

    //MARK: - LABELS

    private let userBalanceTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Meu Saldo:"
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 0
        return label
    }()

    private let userBalanceValueLabel: UILabel = {
        let label = UILabel()
        label.text = "R$ 1000,00"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()

    private let userExpensesTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Gastos de Hoje:"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .right
        return label
    }()

    private let userExpensesValueLabel: UILabel = {
        let label = UILabel()
        label.text = "R$ 360,00"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .right
        return label
    }()

    //MARK: - STACK VIEWS

    private lazy var balanceStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [userBalanceTitleLabel, userBalanceValueLabel])
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.spacing = 6
        return stack
    }()

    private lazy var expenseStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [userExpensesTitleLabel, userExpensesValueLabel])
        stack.axis = .vertical
        stack.distribution = .equalSpacing
        stack.spacing = 6
        return stack
    }()

    private let hideBalanceButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ocultar Valores", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()

    private let financeReportButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ver Relatório de Financeiro", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()

    private let lastExpensesTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Últimas Movimentações"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .right
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(balanceStackView)
        addSubview(expenseStackView)
        addSubview(hideBalanceButton)
        addSubview(financeReportButton)
        addSubview(lastExpensesTitleLabel)

        balanceStackView.translatesAutoresizingMaskIntoConstraints = false
        expenseStackView.translatesAutoresizingMaskIntoConstraints = false

        userBalanceTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        userBalanceValueLabel.translatesAutoresizingMaskIntoConstraints = false
        userExpensesTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        userExpensesValueLabel.translatesAutoresizingMaskIntoConstraints = false

        hideBalanceButton.translatesAutoresizingMaskIntoConstraints = false
        financeReportButton.translatesAutoresizingMaskIntoConstraints = false

        lastExpensesTitleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            balanceStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            balanceStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            expenseStackView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            expenseStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),

            hideBalanceButton.topAnchor.constraint(equalTo: expenseStackView.bottomAnchor, constant: 10),
            hideBalanceButton.centerXAnchor.constraint(equalTo: centerXAnchor),

            financeReportButton.topAnchor.constraint(equalTo: hideBalanceButton.bottomAnchor, constant: 20),
            financeReportButton.centerXAnchor.constraint(equalTo: centerXAnchor),

            lastExpensesTitleLabel.topAnchor.constraint(equalTo: financeReportButton.bottomAnchor, constant: 26),
            lastExpensesTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)

        ])
    }
}
