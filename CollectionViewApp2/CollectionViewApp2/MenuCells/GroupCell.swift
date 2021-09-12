//
//  GroupCell.swift
//  CollectionViewApp2
//
//  Created by Кирилл on 18.08.2021.
//

import UIKit

class GroupCell: UICollectionViewCell {
    @IBOutlet var nameGroup: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.contentView.backgroundColor =  UIColor.systemOrange
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameGroup.lineBreakMode = .byCharWrapping
        nameGroup.adjustsFontForContentSizeCategory = true
    }
    
    func setupCell(group:Group,isSelected : Bool){
        self.nameGroup.text = group.name
        if isSelected{
            self.contentView.backgroundColor = .systemYellow
            
        }else{
            self.contentView.backgroundColor =  UIColor.systemOrange
        }
        
    }

}
