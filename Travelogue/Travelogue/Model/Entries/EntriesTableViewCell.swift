//
//  EntriesTableViewCell.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class EntriesTableViewCell: UITableViewCell {

    @IBOutlet weak var entryCellView: UIView!
    @IBOutlet weak var entryTitleLabel: UILabel!
    @IBOutlet weak var entryDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(entryModel: EntriesModel) {
        entryTitleLabel.text = entryModel.title
        entryDateLabel.text = "July 4"
    }

}
