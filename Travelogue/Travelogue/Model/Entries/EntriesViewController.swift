//
//  EntriesViewController.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/7/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class EntriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    @IBOutlet weak var entryTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        entryTableView.dataSource = self
        entryTableView.delegate = self
        
        EntriesFunctions.readEntry(completion: { [weak self] in
            self?.entryTableView.reloadData()
        })
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.entriesModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = entryTableView.dequeueReusableCell(withIdentifier: "entryCell") as! EntriesTableViewCell
        
        //cell.setup(entryModel: Data.entriesModels[indexPath.row])
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}

