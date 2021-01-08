//
//  ViewController.swift
//  LikeButtonAnimation
//
//  Created by Sebastian Sciuba on 08/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let likeButton : LikeButton = {
        let button = LikeButton()
        button.addTarget(self, action: #selector(handleLikeButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setViewConstraints()
        
    }
    
    func setViewConstraints() {
        view.addSubview(likeButton)
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        likeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        likeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func handleLikeButton() {
        likeButton.flipLikeState()
    }
    
}

