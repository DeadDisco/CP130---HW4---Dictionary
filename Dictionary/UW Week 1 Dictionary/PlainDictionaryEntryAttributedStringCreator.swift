//
//  PlainStringCreator.swift
//  UW Week 1 Dictionary
//
//  Created by Martin Nash on 7/16/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import Foundation
import UIKit

//UIFont(name: "QuicksandDash-Regular", size: 35)

struct PlainDictionaryEntryAttributedStringCreator: DictionaryEntryAttributedStringCreator {
    
    func attributedStringForDictionaryEntry(entry: DictionaryEntry) -> NSAttributedString {
        let finalString = NSMutableAttributedString()
		
		let CoronaFontItalic = UIFont(name: "CoronaLTStd-Italic", size: 24)
		
		let attrs = [NSFontAttributeName : CoronaFontItalic!,
		             NSForegroundColorAttributeName : UIColor.darkGrayColor(),
		             NSBaselineOffsetAttributeName : 0.0,
		             NSTextEffectAttributeName: NSTextEffectLetterpressStyle]
		
		let wordString = NSAttributedString(string: entry.word, attributes: attrs)
        finalString.appendAttributedString(wordString)
        
        
        let newlineString = NSAttributedString(string: "\n")
        finalString.appendAttributedString(newlineString)
		
        
        // DEFINITIONS
        let definitionParagraphStyle = NSMutableParagraphStyle()
        definitionParagraphStyle.paragraphSpacingBefore = 20
        
        for definition in entry.definitions {
            
            let explanationAttributes: [String: AnyObject] = [
				NSFontAttributeName : CoronaFontItalic!,
                NSParagraphStyleAttributeName: definitionParagraphStyle,
                NSForegroundColorAttributeName: UIColor.darkGrayColor()
            ]
            let explanation = NSAttributedString(string: definition.explanation, attributes: explanationAttributes)
            finalString.appendAttributedString(explanation)
            finalString.appendAttributedString(newlineString)
            
        }
		
        return finalString.copy() as! NSAttributedString
    }
    
}
