//
//  EntriesListViewController.swift
//  UW Week 1 Dictionary
//
//  Created by Martin Nash on 7/14/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import UIKit

class EntriesListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var entries: [DictionaryEntry] {
        return DefinitionDataSource.entries
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    
    

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return entries.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "DictionaryCell")
        let entry = entries[indexPath.row]
        cell.textLabel?.text = entry.word
        return cell
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedEntry = entries[indexPath.row]
        
        let vc = self.storyboard?.instantiateViewControllerWithIdentifier("SingleEntryViewController")
        if let definitionVC = vc as? SingleEntryViewController {
            definitionVC.entry = selectedEntry
            navigationController?.pushViewController(definitionVC, animated: true)
        }
        
    }

}

