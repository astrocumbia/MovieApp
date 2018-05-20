//
//  CategoryViewCell.swift
//  MovieApp
//
//  Created by Irvin  Castellanos on 5/19/18.
//  Copyright © 2018 Irvin  Castellanos. All rights reserved.
//

import UIKit

class CategoryViewCell: UITableViewCell {
  
  @IBOutlet weak var titleLabel: UILabel!
  
  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    // Configure the view for the selected state
  }
  
}
