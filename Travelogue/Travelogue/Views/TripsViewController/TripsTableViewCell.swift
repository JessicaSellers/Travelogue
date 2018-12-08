//
//  TripsTableViewCell.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class TripsTableViewCell: UITableViewCell {

    @IBOutlet weak var tripsDisplayedView: UIView!
    @IBOutlet weak var tripTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tripsDisplayedView.layer.cornerRadius = 10
    }
    
    func setup(tripModel: TripModel) {
        tripTitle.text = tripModel.title
    }

}
