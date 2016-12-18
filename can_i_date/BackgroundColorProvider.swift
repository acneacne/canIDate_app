//
//  BackgroundColorProvider.swift
//  can_i_date
//
//  Created by Michel on 12/17/16.
//  Copyright © 2016 coolnerd. All rights reserved.
//

import UIKit
import GameKit

// Struct that holds an array of colors and creates a func to pass a random color from the array.
struct BackgroundColorProvider {
    
    // RGB colors array
    let colors = [ UIColor(red: 136/255.0, green: 176/255.0, blue: 75/255.0, alpha: 1.0)// greenery
        ,UIColor(red: 145/255.0, green: 168/255.0, blue: 208/255.0, alpha: 1.0)
        ,UIColor(red: 247/255.0, green: 202/255.0, blue: 201/255.0, alpha: 1.0)
        ,UIColor(red: 71/255.0, green: 106/255.0, blue: 48/255.0, alpha: 1.0)
        ,UIColor(red: 102/255.0, green: 100/255.0, blue: 139/255.0, alpha: 1.0)
        ,UIColor(red: 62/255.0, green: 79/255.0, blue: 92/255.0, alpha: 1.0)
        ,UIColor(red: 238/255.0, green: 92/255.0, blue: 108/255.0, alpha: 1.0)
        ,UIColor(red: 213/255.0, green: 213/255.0, blue: 216/255.0, alpha: 1.0)
    ]
    
    // func that pass a random color from array
    func randomColor() -> UIColor {
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}

