//
//  JournalTableViewController.swift
//  Simply Fit
//
//  Created by Jax De Leon on 7/30/20.
//  Copyright © 2020 Liz. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {

    var journalEntries : [JournalEntryCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //journalEntries = createJournalEntries()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func getJournalEntries() {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let coreDataToDos = try? context.fetch(JournalEntryCD.fetchRequest()) as? [JournalEntryCD] {
                print("\(coreDataToDos)")
                journalEntries = coreDataToDos
                tableView.reloadData()
        }
      }
    }
    /*
    func createJournalEntries() -> [JournalEntry] {

      let swift = JournalEntry()
      swift.date = "July 30, 2020"
      swift.info = "today"

      let dog = JournalEntry()
      dog.date = "July 31, 2020"
        dog.info = "tomorrow"
      // important is set to false by default

      return [swift, dog]
    }
    */
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journalEntries.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let journalEntry = journalEntries[indexPath.row]
        
        cell.textLabel?.text = journalEntry.date

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let journalEntry = journalEntries[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: journalEntry)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddEntryViewController {
          addVC.previousVC = self
        }
        if let completeVC = segue.destination as? CompleteViewController {
          if let journalEntry = sender as? JournalEntryCD {
            completeVC.selectedToDo = journalEntry
            completeVC.previousVC = self
          }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
      getJournalEntries()
    }
}
