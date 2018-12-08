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
        Data.tripModels.append(tripModel)
    }
    
    static func readTrips(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
        
        // will need replaced for core data
        if Data.tripModels.count == 0 {
            Data.tripModels.append(TripModel(title: "Thailand"))
            Data.tripModels.append(TripModel(title: "Harry Potter World"))
            Data.tripModels.append(TripModel(title: "Italy"))
            Data.tripModels.append(TripModel(title: "Japan"))
            Data.tripModels.append(TripModel(title: "Hong Kong"))
        }
            DispatchQueue.main.async {
                completion()
            }
        }

    }
    
    static func updateTrip(tripModel: TripModel) {
        
    }
    
    static func deleteTrip(tripModel: TripModel){
        
    }
}
