//
//  MainCell.swift
//  CollectionViewApp2
//
//  Created by Кирилл on 21.08.2021.
//

import UIKit

class MainCell: UICollectionViewCell {
    @IBOutlet var imageGroup: UIImageView!
    @IBOutlet var nameGroup: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setup(group:Group) {
        self.imageGroup.image = group.image
        self.nameGroup.text = group.name
        
        
    }
}
