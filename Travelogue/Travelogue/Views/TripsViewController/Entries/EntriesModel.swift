//
//  EntriesModel.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import Foundation
import UIKit

struct EntriesModel {
    var title: String
    var note: String
    //var image: UIImage?
    
    init(title: String, note: String) {
        self.title = title
        self.note = note
        //self.image = image
    }
}

