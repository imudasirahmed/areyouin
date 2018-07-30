//
//  RegistrationViewController.swift
//  areyouin
//
//  Created by Mudasir Ahmed on 7/30/18.
//  Copyright © 2018 Mudasir Ahmed. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    let plusPhotoButton:UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "plus_photo").withRenderingMode(UIImageRenderingMode.alwaysOriginal), for: UIControlState.normal)
        return button
    }()
    
    let emailTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(white: 0, alpha: 0.03)
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()

    let userNameTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Username"
        textField.borderStyle = .roundedRect
        textField.backgroundColor = UIColor.init(white: 0, alpha: 0.03)
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let passwordTextField:UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.borderStyle = .roundedRect
        textField.isSecureTextEntry = true
        textField.backgroundColor = UIColor.init(white: 0, alpha: 0.03)
        textField.font = UIFont.systemFont(ofSize: 14)
        return textField
    }()
    
    let signUpButton:UIButton = {
       let button = UIButton.init(type: UIButtonType.system)
        button.setTitle("Sign Up", for: UIControlState.normal)
        button.backgroundColor = UIColor.rgb(red: 149, green: 204, blue: 244)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        return button
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        
        plusPhotoButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 40, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 140, height: 140)
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        setupInputFields()
    }
    
    fileprivate func setupInputFields() {
        
        let stackView = UIStackView.init(arrangedSubviews: [emailTextField, userNameTextField, passwordTextField, signUpButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        view.addSubview(stackView)
        
        stackView.anchor(top: plusPhotoButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 20, paddingLeft: 40, paddingBottom: 0, paddingRight: 40, width: 0, height: 200)

    }
}
