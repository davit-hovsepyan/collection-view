//
//  MyCollectionViewCell.swift
//  CollectionViewCell
//
//  Created by Davit Hovsepyan on 25.03.22.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var MyLable: UILabel!
    @IBOutlet weak var MyImageName: UIImageView!
    
    static let identifier = "MyCollectionViewCell"
    
    static func nib() -> UINib{
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(with model: Model){
        self.MyLable.text = model.text
        self.MyImageName.image = UIImage(named: model.imageName)
        
    }
}
