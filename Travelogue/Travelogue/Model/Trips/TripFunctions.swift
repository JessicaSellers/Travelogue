//
//  TripFunctions.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import Foundation

class TripFunctions {
    static func createTrip(tripModel: TripModel) {
        
    }
    
    static func readTrips() {
        if Data.tripModels.count == 0 {
            Data.tripModels.append(TripModel(title: "Thailand"))
            Data.tripModels.append(TripModel(title: "Harry Potter World"))
            Data.tripModels.append(TripModel(title: "Italy"))
            Data.tripModels.append(TripModel(title: "Japan"))
            Data.tripModels.append(TripModel(title: "Hong Kong"))
        }
    }
    
    static func updateTrip(tripModel: TripModel) {
        
    }
    
    static func deleteTrip(tripModel: TripModel){
        
    }
}
