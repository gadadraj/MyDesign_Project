//
//  CstmTVCell.swift
//  MyDesign_Project
//
//  Created by Rajsekhar on 09/10/18.
//  Copyright © 2018 Rajshekhar. All rights reserved.
//

import UIKit

class CstmTVCell: UITableViewCell {
    @IBOutlet weak var myImageView : UIImageView!
    @IBOutlet weak var txtLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
