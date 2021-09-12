//
//  ProductCell.swift
//  CollectionViewApp2
//
//  Created by Кирилл on 16.08.2021.
//

import UIKit

class ProductCell: UICollectionViewCell {
  
    @IBOutlet var tableView: UITableView!
    
    var fullScreenHandler: ((_ cell:ProductCell, _ indexProduct: Int ) ->Void)?
    private var products = [Product]()
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    
    func setupCell(product:[Product]) {
        self.products = product
        self.tableView.reloadData()

    }

}

extension ProductCell: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        cell.setup(product: self.products[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        fullScreenHandler?(self, indexPath.row)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
