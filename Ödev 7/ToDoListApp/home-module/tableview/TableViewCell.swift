//
//  TableViewCell.swift
//  ToDoListApp
//
//  Created by Canberk Yaşa on 3.02.2023.
//

import UIKit


class TableViewCell: UITableViewCell {

    @IBOutlet weak var ordinals: UILabel!
    
    @IBOutlet weak var task: UILabel!
    
    @IBOutlet weak var buttonCheck: UIButton!
    
    var presenterObject:HomePresenter?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if selected {
                 contentView.backgroundColor = UIColor(named: "Main1")
             } else {
                 contentView.backgroundColor = UIColor(named: "Main2")
             }
        // Configure the view for the selected state
    }
    

    @IBAction func buttonCheck(_ sender: Any) {
     
        if buttonCheck.currentImage == UIImage(systemName: "circle") {
            buttonCheck.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        } else {
            buttonCheck.setImage(UIImage(systemName: "circle"), for: .normal)
        }
        
    }
    
}
