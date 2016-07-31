//
//  DictionaryEntryStringConverter.swift
//  UW Week 1 Dictionary
//
//  Created by Martin Nash on 7/16/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import Foundation
import UIKit


// Protocol that you must implement

protocol DictionaryEntryAttributedStringCreator {
    func attributedStringForDictionaryEntry(entry: DictionaryEntry) -> NSAttributedString
}

