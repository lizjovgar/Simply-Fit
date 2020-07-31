//
//  CompleteViewController.swift
//  Simply Fit
//
//  Created by Jax De Leon on 7/30/20.
//  Copyright © 2020 Liz. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    var previousVC = JournalTableViewController()
    var selectedToDo = JournalEntry()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo.date
    }
    
    @IBAction func deleteTapped(_ sender: Any) {
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
