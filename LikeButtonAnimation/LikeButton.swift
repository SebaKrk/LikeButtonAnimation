//
//  LikeButton.swift
//  LikeButtonAnimation
//
//  Created by Sebastian Sciuba on 08/01/2021.
//

import UIKit

class LikeButton: UIButton {
    
    private let unLikeImage = UIImage(named: "heart_empty")
    private let likeImage = UIImage(named: "heart_filled")
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        
        setImage(unLikeImage, for: .normal)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

