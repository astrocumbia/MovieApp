//
//  MovieCollectionViewCell.swift
//  MovieApp
//
//  Created by Irvin  Castellanos on 5/19/18.
//  Copyright © 2018 Irvin  Castellanos. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var mainView: UIView!
  @IBOutlet weak var frontImage: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
    
    self.layer.mask?.masksToBounds = false
    //self.layer.maskToBounds = false
    self.layer.shadowColor = UIColor.black.cgColor
    self.layer.shadowOffset = CGSize(width: 0, height: 2.0)
    self.layer.shadowOpacity = 0.24
    self.layer.shadowRadius = CGFloat(2.0)
  }
  
}
