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
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func saveName(_ sender: Any) {
        TripFunctions.createTrip(tripModel: TripModel(title: tripNameTextField.text!))
        
        if let doneSaving = doneSaving {
            doneSaving()
        }
        dismiss(animated: true)
        
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true)
    }


}
