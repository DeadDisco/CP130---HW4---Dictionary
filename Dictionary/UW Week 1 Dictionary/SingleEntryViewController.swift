//
//  SingleEntryViewController.swift
//  UW Week 1 Dictionary
//
//  Created by Martin Nash on 7/14/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//


import UIKit

class SingleEntryViewController: UIViewController {

    /**
     The main worker of the SingleEntryViewController controller, string creation logic lives here.
     All you have to do to change the look and feel of this view controller is provide a differnet implementation of this string creator.
     */
    var stringCreator: DictionaryEntryAttributedStringCreator!
    
    /**
     The entry to be displayed. 
     Passed in by the class that presents this view controller
     */
    var entry: DictionaryEntry!

    @IBOutlet weak var contentTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        automaticallyAdjustsScrollViewInsets = false
        contentTextView.textContainerInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)

        // Change this to your custom `DictionaryEntryAttributedStringCreator` implementation
        stringCreator = PlainDictionaryEntryAttributedStringCreator()
        
        let string = stringCreator.attributedStringForDictionaryEntry(entry)
        contentTextView.attributedText = string
        
    }

}

