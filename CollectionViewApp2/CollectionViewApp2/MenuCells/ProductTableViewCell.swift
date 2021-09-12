//
//  ProductTableViewCell.swift
//  CollectionViewApp2
//
//  Created by Кирилл on 21.08.2021.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!
    @IBOutlet var productPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setup(product:Product){
                self.productImage.image = product.image
                self.productName.text = product.name
                self.productPrice.text = "\(product.price)"
    }
  
    
}
