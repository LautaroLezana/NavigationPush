//
//  ViewController.swift
//  UIKit9-NavigationModal
//
//  Created by Lautaro matias Lezana luna on 21/11/2022.
//

import UIKit

class ViewControllerA: UIViewController {
    private lazy var swiftbetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller A"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        view.addSubview(swiftbetaButton)
        
        NSLayoutConstraint.activate([
            swiftbetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftbetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func startNavigation() {
        present(ViewControllerB(),
                animated: true)
    }

}

