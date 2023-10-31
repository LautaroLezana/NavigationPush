//
//  ViewControllerB.swift
//  UIKit9-NavigationModal
//
//  Created by Lautaro matias Lezana luna on 21/11/2022.
//

import UIKit

class ViewControllerB: UIViewController {
    
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss View Controller B"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissViewControllerB()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftbetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller C"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(dismissButton)
        view.addSubview(swiftbetaButton)

        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            swiftbetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftbetaButton.bottomAnchor.constraint(equalTo: dismissButton.topAnchor, constant: -32),
        ])
    }
    
    func startNavigation() {
        present(ViewControllerC(),
                animated: true)
    }
    
    func dismissViewControllerB() {
        dismiss(animated: true)
    }
}
