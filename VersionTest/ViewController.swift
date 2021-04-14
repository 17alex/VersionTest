//
//  ViewController.swift
//  VersionTest
//
//  Created by Alex on 14.04.2021.
//

import UIKit

final class ViewController: UIViewController {

    let versionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let modelLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let startButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Start", for: .normal)
        button.backgroundColor = .systemGray4
        button.addTarget(self, action: #selector(startButtonPress), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    private func setup() {
        view.addSubview(versionLabel)
        view.addSubview(startButton)
        view.addSubview(modelLabel)
        
        versionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        versionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        
        modelLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        modelLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
        startButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

    @objc private func startButtonPress() {
        print("press")
        let systemVersion = UIDevice.current.systemVersion
        let modelName = UIDevice.current.name
        print("version = \(systemVersion)")
        print("modelName = \(modelName)")
        versionLabel.text = "version: \(systemVersion)"
        modelLabel.text = "model: \(modelName)"
    }
    
}

