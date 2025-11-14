//
//  ViewController.swift
//  animation-issue-demo
//
//  Created by Reza on 2025-11-14.
//

import UIKit

class ViewController: UIViewController {

    let spinningImageView = SpinningImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        spinningImageView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(spinningImageView)

        NSLayoutConstraint.activate([
            spinningImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spinningImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        spinningImageView.start()
    }
}

class SpinningImageView: UIImageView {
    init() {
        super.init(frame: .zero)

        image = .loremIpsum
        contentMode = .scaleAspectFit
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func start() {
        UIView.transition(with: self, duration: 4, options: [.transitionFlipFromRight], animations: nil)
    }
}
