//
//  EntriesFunctions.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import Foundation
import UIKit

class EntriesFunctions {
    
    static func createEntry(entriesModel: EntriesModel) {
        Data.entriesModels.append(entriesModel)
    }
    
    static func readEntry(completion: @escaping () -> ()) {
        DispatchQueue.global(qos: .userInteractive).async {
            
            // will need replaced for core data
            if Data.entriesModels.count == 0 {
                Data.entriesModels.append(EntriesModel(title: "Thailand", note: "Today was really fun. I went to a waterfall."))
                Data.entriesModels.append(EntriesModel(title: "Harry Potter World", note: "It was like I was at Hogwarts"))
                Data.entriesModels.append(EntriesModel(title: "Italy", note:"I had some amazing pizza today."))
                Data.entriesModels.append(EntriesModel(title: "Japan", note:"Today we went to Tokyo."))
                Data.entriesModels.append(EntriesModel(title: "Hong Kong", note:"I met the nicest local today and she showed me around."))
            }
            DispatchQueue.main.async {
                completion()
            }
        }
        
    }
    
    static func updateEntry(at index: Int, title: String, note: String) {
        Data.entriesModels[index].title = title
        Data.entriesModels[index].note = note
    }
    
    static func deleteEntry(index: Int){
        Data.entriesModels.remove(at: index)
    }
}

    

