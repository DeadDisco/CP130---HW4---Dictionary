//
//  FontPrinter.swift
//  UW Week 1 Dictionary
//
//  Created by Martin Nash on 7/14/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import Foundation
import UIKit

struct FontPrinter {

    static func printAllFonts() {
        UIFont.familyNames().sort().forEach({ familyName in

            print("=== \(familyName) ===")
            
            UIFont.fontNamesForFamilyName(familyName).sort().forEach({ fontName in
                print(fontName)
            })
        
        })
    }
    
}


