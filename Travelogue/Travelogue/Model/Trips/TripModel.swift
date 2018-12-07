//
//  TripModel.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import Foundation

class TripModel {
    let id: UUID
    var title: String
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
