//
//  PostTableViewHucre.swift
//  Ödev 6
//
//  Created by Canberk Yaşa on 28.01.2023.
//

import UIKit

class PostTableViewHucre: UITableViewCell {

    @IBOutlet weak var labelAd: UILabel!
    @IBOutlet weak var labelHandle: UILabel!
    
    @IBOutlet weak var imageResim: UIImageView!
    
    @IBOutlet weak var labelPost: UILabel!
    
    @IBOutlet weak var buttonComment: UIButton!
    
    @IBOutlet weak var buttonRetweet: UIButton!
    
    @IBOutlet weak var buttonLike: UIButton!
    
    @IBOutlet weak var labelSure: UILabel!
    
    @IBOutlet weak var imageBlue: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    

}
