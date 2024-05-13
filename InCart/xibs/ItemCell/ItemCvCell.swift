//
//  ItemCvCell.swift
//  InCart
//
//  Created by Mag isb-10 on 11/05/2024.
//

import UIKit

class ItemCvCell: UICollectionViewCell {
  
  @IBOutlet weak var itemImage: UIImageView!
  @IBOutlet weak var itemName: UILabel!
  @IBOutlet weak var itemQuantity: UILabel!
  @IBOutlet weak var itemPrice: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
