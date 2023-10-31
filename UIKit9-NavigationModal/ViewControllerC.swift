//
//  ViewControllerC.swift
//  UIKit9-NavigationModal
//
//  Created by Lautaro matias Lezana luna on 21/11/2022.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Dismiss View Controller C"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissViewControllerC()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        view.addSubview(dismissButton)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func dismissViewControllerC() {
        dismiss(animated: true)
    }
}
