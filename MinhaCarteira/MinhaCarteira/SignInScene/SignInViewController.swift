//
//  SignInViewController.swift
//  MinhaCarteira
//
//  Created by Ygor Nascimento on 17/05/20.
//  Copyright (c) 2020 Ygor Nascimento. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol SignInDisplayLogic: class {
    func displaySomething(viewModel: SignIn.Something.ViewModel)
}

final class SignInViewController: UIViewController, SignInDisplayLogic {
    let loginView = SignInView()
    var interactor: SignInBusinessLogic?
    var router: (NSObjectProtocol & SignInRoutingLogic & SignInDataPassing)?

    // MARK: Setup

    private func setup() {
        let viewController = self
        let interactor = SignInInteractor()
        let presenter = SignInPresenter()
        let router = SignInRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }

    // MARK: Routing

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
        setupView()
    }

    // MARK: Do something

    func doSomething() {
        let request = SignIn.Something.Request()
        interactor?.doSomething(request: request)
    }

    private func setupView() {
        view.backgroundColor = .white
        view.addSubview(loginView)
        loginView.translatesAutoresizingMaskIntoConstraints = true

        NSLayoutConstraint.activate([
            loginView.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            loginView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            loginView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
        ])

    }

    func displaySomething(viewModel: SignIn.Something.ViewModel) {
        //nameTextField.text = viewModel.name
    }
}