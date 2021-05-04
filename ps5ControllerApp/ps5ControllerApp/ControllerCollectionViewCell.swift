//
//  ControllerCollectionViewCell.swift
//  ps5ControllerApp
//
//  Created by Rıdvan Mertoğlu on 3.05.2021.
//

import UIKit

final class ControllerCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var imageView: UIImageView!
    

    func configure(image: UIImage?) {
        imageView.image = image
    }

}
