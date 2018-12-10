//
//  AddEntriesViewController.swift
//  Travelogue
//
//  Created by Jessica Elizabeth Sellers on 12/10/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//

import UIKit

class AddEntriesViewController: UIViewController {
    
    
    @IBOutlet weak var titleEntry: UITextField!
    @IBOutlet weak var entryNote: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func cancelEntryAdd(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func saveEntry(_ sender: Any) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
