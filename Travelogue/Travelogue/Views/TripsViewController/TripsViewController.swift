//
//  TripsViewController.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class TripsViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tripsTableView: UITableView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        tripsTableView.dataSource = self
        
        TripFunctions.readTrips(completion: { [weak self] in
            self?.tripsTableView.reloadData()
        })
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.tripModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tripsTableView.dequeueReusableCell(withIdentifier: "cell")
        
        if cell == nil {
         cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        }
            
        cell!.textLabel?.text = Data.tripModels[indexPath.row].title
        
        return cell!
    }
    
    /*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } */
    


}
