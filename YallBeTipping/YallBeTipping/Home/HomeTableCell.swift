//
//  HomeTableCell.swift
//  YallBeTipping
//
//  Created by SOOPIN KIM on 2024-07-24.
//

import UIKit

class HomeTableCell: UITableViewCell {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(item: MenuItem){
        name.text = item.name
        price.text = "\(item.price)"
        img.image = UIImage(named: item.img)
    }
}
