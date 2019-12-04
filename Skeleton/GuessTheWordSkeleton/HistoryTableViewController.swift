//
//  HistoryTableViewController.swift
//  GuessTheWordSkeleton
//
//  Created by Will Oakley on 11/2/18.
//  Copyright © 2018 Will Oakley. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {
    
    /* Arrays for cells that are populated in ViewController's prepareForSegue */
    var words: [String]!
    var tries: [Int]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /* Reloads table data with new data from ViewController's prepareForSegue */
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    /* Dismisses this modal to go back to ViewController */
    @IBAction func dismissHistory(_ sender: Any) {
        //TODO: Dismiss this view controller
    }
    
    /* TableView only has one section */
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    /* Number of cells correlates to number of correct answers (length of words array) */
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Set to length of array aboive
        return 0
    }
    
    /* Populates Default cell w/ subtitle with info from arrays above. Called once for each cell necessary as determined by numberOfRowsInSection */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTemplate", for: indexPath)
        //TODO: Set properties of cell (textLabel, detailTextLabel) to text from arrays. Use indexPath.row
        return cell
    }
}
