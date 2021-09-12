//
//  Menu.swift
//  CollectionViewApp2
//
//  Created by Кирилл on 16.08.2021.
//

import Foundation
import UIKit

struct Group {
    var name: String
    var groups: [Group]?
    var prouct: [Product]?
    var image:UIImage
}
struct Product {
    var name: String
    var price: Float
    var image:UIImage
    }

class Menu {
    var groups = [Group]()
    
    init() {
         setup()
    }
    
    func setup() {
        // 1
        let p1 = Product(name: "Баскетбол1", price: 100, image: UIImage(named: "p1")!)
        let p2 = Product(name: "Баскетбол2", price: 200, image: UIImage(named: "p1")!)
        let p3 = Product(name: "Баскетбол3", price: 300, image: UIImage(named: "p1")!)

        let p4 = Product(name: "Баскетбол4", price: 1000, image: UIImage(named: "p1")!)
        let p5 = Product(name: "Баскетбол5", price: 2000, image: UIImage(named: "p1")!)
        let p6 = Product(name: "Баскетбол6", price: 3000, image: UIImage(named: "p1")!)
        
        let p7 = Product(name: "Баскетбол7", price: 10000, image: UIImage(named: "p1")!)
        let p8 = Product(name: "Баскетбол8", price: 20000, image: UIImage(named: "p1")!)
        let p9 = Product(name: "Баскетбол9", price: 30000, image: UIImage(named: "p1")!)
        
        
        let basketGroupIn1 = Group(name: "Баскетбольный мяч дешевый", groups: nil, prouct: [p1,p2,p3], image: UIImage(named: "p1")!)
        let basketGroupIn2 = Group(name: "Баскетбольный мяч дорогой", groups: nil, prouct: [p4,p5,p6], image: UIImage(named: "p1")!)
        let basketGroupIn3 = Group(name: "Баскетбольный мяч премиум", groups: nil, prouct: [p7,p8,p9], image: UIImage(named: "p1")!)
        
        let basketGroup = Group(name: "Баскетбольные мячи", groups: [basketGroupIn1,basketGroupIn2,basketGroupIn3], prouct: nil, image: UIImage(named: "p1")!)
        
        
        // 2
        
        let f1 = Product(name: "Футбол1", price: 100, image: UIImage(named: "p2")!)
        let f2 = Product(name: "Футбол2", price: 200, image: UIImage(named: "p2")!)
        let f3 = Product(name: "Футбол3", price: 300, image: UIImage(named: "p2")!)

        let f4 = Product(name: "Футбол4", price: 1000, image: UIImage(named: "p2")!)
        let f5 = Product(name: "Футбол5", price: 2000, image: UIImage(named: "p2")!)
        let f6 = Product(name: "Футбол6", price: 3000, image: UIImage(named: "p2")!)
        
        let f7 = Product(name: "Футбол7", price: 10000, image: UIImage(named: "p2")!)
        let f8 = Product(name: "Футбол8", price: 20000, image: UIImage(named: "p2")!)
        let f9 = Product(name: "Футбол9", price: 30000, image: UIImage(named: "p2")!)
        
        
        let footballGroupIn1 = Group(name: "Футбольный мяч дешевый", groups: nil, prouct: [f1,f2,f3,f1,f2,f3,f1,f2,f3], image: UIImage(named: "p2")!)
        let footballGroupIn2 = Group(name: "Футбольный мяч дорогой", groups: nil, prouct: [f4,f5,f6], image: UIImage(named: "p2")!)
        let footballGroupIn3 = Group(name: "Футбольный мяч премиум", groups: nil, prouct: [f7,f8,f9], image: UIImage(named: "p2")!)
        
        let footballGroup = Group(name: "Футбольные мячи", groups: [footballGroupIn1,footballGroupIn2,footballGroupIn3], prouct: nil, image: UIImage(named: "p2")!)
        
        //3
        let m1 = Product(name: "Mac1", price: 100, image: UIImage(named: "p3")!)
        let m2 = Product(name: "Mac2", price: 200, image: UIImage(named: "p3")!)
        let m3 = Product(name: "Mac3", price: 300, image: UIImage(named: "p3")!)

        let m4 = Product(name: "Mac4", price: 1000, image: UIImage(named: "p3")!)
        let m5 = Product(name: "Mac5", price: 2000, image: UIImage(named: "p3")!)
        let m6 = Product(name: "Mac6", price: 3000, image: UIImage(named: "p3")!)
        
        let m7 = Product(name: "Mac7", price: 10000, image: UIImage(named: "p3")!)
        let m8 = Product(name: "Mac8", price: 20000, image: UIImage(named: "p3")!)
        let m9 = Product(name: "Mac9", price: 30000, image: UIImage(named: "p3")!)
        
        
        let macGroupIn1 = Group(name: "Mac дешевый", groups: nil, prouct: [m1,m2,m3], image: UIImage(named: "p3")!)
        let macGroupIn2 = Group(name: "Mac дорогой", groups: nil, prouct: [m4,m5,m6], image: UIImage(named: "p3")!)
        let macGroupIn3 = Group(name: "Mac премиум", groups: nil, prouct: [m7,m8,m9], image: UIImage(named: "p3")!)
        
        let macGroup = Group(name: "Mac", groups: [macGroupIn1,macGroupIn2,macGroupIn3], prouct: nil, image: UIImage(named: "p3")!)
        
        groups.append(basketGroup)
        groups.append(footballGroup)
        groups.append(macGroup)
        

    }
}
extension String{

    func widthOfString(usingFont font: UIFont) -> CGFloat {
             let fontAttributes = [NSAttributedString.Key.font: font]
             let size = (self as NSString).size(withAttributes: fontAttributes)
             return ceil(size.width)
    }
    
   
         
    }
    
   

