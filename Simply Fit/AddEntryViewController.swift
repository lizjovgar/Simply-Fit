//
//  AddEntryViewController.swift
//  Simply Fit
//
//  Created by Jax De Leon on 7/30/20.
//  Copyright © 2020 Liz. All rights reserved.
//

import UIKit

class AddEntryViewController: UIViewController {

    var previousVC = JournalTableViewController()
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        let journalEntry = JournalEntry()

        if let titleText = textField.text {
          journalEntry.date = titleText
            
        previousVC.journalEntries.append(journalEntry)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
