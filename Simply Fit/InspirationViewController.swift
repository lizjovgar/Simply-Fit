//
//  FirstViewController.swift
//  Simply Fit
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Liz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var quote: UILabel!
    
    @IBAction func newQuoteButton(_ sender: Any) {
        quote.text = ""
        //how do we get this button to put a new quote for every time the button is pressed?
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

