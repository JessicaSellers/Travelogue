//
//  AddTripViewController.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class AddTripViewController: UIViewController {

    @IBOutlet weak var saveTripName: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var tripNameTextField: UITextField!
    @IBOutlet weak var popupView: UIView!
    
    var doneSaving: (() -> ())?
    var tripIndexToEdit: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let index = tripIndexToEdit {
            let trip = Data.tripModels[index]
            tripNameTextField.text = trip.title
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func saveName(_ sender: Any) {
        tripNameTextField.rightViewMode = .never
        
        guard tripNameTextField.text != "", let newTripName = tripNameTextField.text else {
            
            return
        }

         if let index = tripIndexToEdit {
                TripFunctions.updateTrip(at: index, title: newTripName)
            
        }
         else {

                TripFunctions.createTrip(tripModel: TripModel(title: newTripName))
            
        }
        if let doneSaving = doneSaving {
            doneSaving()
        }
        
        dismiss(animated: true)
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }


}
