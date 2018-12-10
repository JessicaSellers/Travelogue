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
    var entryIndexToEdit: Int?
    
    
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
        let cell = entryTableView.dequeueReusableCell(withIdentifier: "cell") as! EntriesTableViewCell
        
        cell.setup(entryModel: Data.entriesModels[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (contextualAction, view, actionPerformed: (Bool)->Void) in
            
            EntriesFunctions.deleteEntry(index: indexPath.row)
            self.entryTableView.deleteRows(at: [indexPath], with: .automatic)
            actionPerformed(true)
        }
        
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } 
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = UIContextualAction(style: .normal, title: "Edit") { (contextualAction, view, actionPerformed: (Bool)->Void) in
            self.entryIndexToEdit = indexPath.row
            self.performSegue(withIdentifier: "toAddEntrySegue", sender: nil)
            actionPerformed(true)
        }
        edit.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        return UISwipeActionsConfiguration(actions: [edit])
    }



}

