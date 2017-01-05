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
        ,UIColor(red: 213/255.0, green: 213/255.0, blue: 216/255.0, alpha: 1.0)//
        ,UIColor(red: 70/255.0, green: 68/255.0, blue: 76/255.0, alpha: 1.0)
        ,UIColor(red: 134/255.0, green: 76/255.0, blue: 36/255.0, alpha: 1.0)
        ,UIColor(red: 200/255.0, green: 178/255.0, blue: 115/255.0, alpha: 1.0)
        ,UIColor(red: 138/255.0, green: 111/255.0, blue: 72/255.0, alpha: 1.0)
        ,UIColor(red: 209/255.0, green: 91/255.0, blue: 120/255.0, alpha: 1.0)
        ,UIColor(red: 183/255.0, green: 107/255.0, blue: 163/255.0, alpha: 1.0)
        ,UIColor(red: 81/255.0, green: 91/255.0, blue: 135/255.0, alpha: 1.0)//
        ,UIColor(red: 122/255.0, green: 137/255.0, blue: 143/255.0, alpha: 1.0)
        ,UIColor(red: 206/255.0, green: 132/255.0, blue: 119/255.0, alpha: 1.0)
        ,UIColor(red: 103/255.0, green: 69/255.0, blue: 80/255.0, alpha: 1.0)
        ,UIColor(red: 157/255.0, green: 116/255.0, blue: 70/255.0, alpha: 1.0)
        ,UIColor(red: 218/255.0, green: 181/255.0, blue: 143/255.0, alpha: 1.0)
        ,UIColor(red: 102/255.0, green: 53/255.0, blue: 43/255.0, alpha: 1.0)
        ,UIColor(red: 196/255.0, green: 126/255.0, blue: 90/255.0, alpha: 1.0)//
        ,UIColor(red: 169/255.0, green: 189/255.0, blue: 177/255.0, alpha: 1.0)
        ,UIColor(red: 237/255.0, green: 241/255.0, blue: 254/255.0, alpha: 1.0)
        ,UIColor(red: 254/255.0, green: 231/255.0, blue: 21/255.0, alpha: 1.0)
        ,UIColor(red: 50/255.0, green: 80/255.0, blue: 160/255.0, alpha: 1.0)
        ,UIColor(red: 255/255.0, green: 121/255.0, blue: 19/255.0, alpha: 1.0)
        ,UIColor(red: 224/255.0, green: 79/255.0, blue: 128/255.0, alpha: 1.0)
        ,UIColor(red: 160/255.0, green: 159/255.0, blue: 156/255.0, alpha: 1.0)
        ,UIColor(red: 240/255.0, green: 161/255.0, blue: 191/255.0, alpha: 1.0)
        ,UIColor(red: 95/255.0, green: 91/255.0, blue: 76/255.0, alpha: 1.0)
        ,UIColor(red: 160/255.0, green: 157/255.0, blue: 89/255.0, alpha: 1.0)
        ,UIColor(red: 89/255.0, green: 117/255.0, blue: 77/255.0, alpha: 1.0)
        ,UIColor(red: 123/255.0, green: 67/255.0, blue: 104/255.0, alpha: 1.0)
        ,UIColor(red: 166/255.0, green: 89/255.0, blue: 76/255.0, alpha: 1.0)
        ,UIColor(red: 66/255.0, green: 105/255.0, blue: 114/255.0, alpha: 1.0)
        ,UIColor(red: 156/255.0, green: 126/255.0, blue: 65/255.0, alpha: 1.0)
        ,UIColor(red: 68/255.0, green: 136/255.0, blue: 60/255.0, alpha: 1.0)
        ,UIColor(red: 30/255.0, green: 68/255.0, blue: 119/255.0, alpha: 1.0)
        ,UIColor(red: 0/255.0, green: 97/255.0, blue: 163/255.0, alpha: 1.0)
        ,UIColor(red: 0/255.0, green: 148/255.0, blue: 153/255.0, alpha: 1.0)
        ,UIColor(red: 95/255.0, green: 114/255.0, blue: 120/255.0, alpha: 1.0)
        ,UIColor(red: 138/255.0, green: 154/255.0, blue: 154/255.0, alpha: 1.0)//
        ,UIColor(red: 128/255.0, green: 115/255.0, blue: 150/255.0, alpha: 1.0)
        ,UIColor(red: 184/255.0, green: 138/255.0, blue: 172/255.0, alpha: 1.0)
        ,UIColor(red: 211/255.0, green: 127/255.0, blue: 111/255.0, alpha: 1.0)
        ,UIColor(red: 218/255.0, green: 185/255.0, blue: 101/255.0, alpha: 1.0)
        ,UIColor(red: 139/255.0, green: 111/255.0, blue: 112/255.0, alpha: 1.0)
        ,UIColor(red: 174/255.0, green: 140/255.0, blue: 142/255.0, alpha: 1.0)
        ,UIColor(red: 239/255.0, green: 224/255.0, blue: 205/255, alpha: 1.0)//
        ,UIColor(red: 151/255.0, green: 60/255.0, blue: 108/255.0, alpha: 1.0)
        ,UIColor(red: 244/255.0, green: 85/255.0, blue: 32/255.0, alpha: 1.0)
        ,UIColor(red: 71/255.0, green: 36/255.0, blue: 59/255.0, alpha: 1.0)
        ,UIColor(red: 125/255.0, green: 32/255.0, blue: 39/255.0, alpha: 1.0)
        ,UIColor(red: 206/255.0, green: 49/255.0, blue: 117/255.0, alpha: 1.0)
        ,UIColor(red: 185/255.0, green: 18/255.0, blue: 40/255.0, alpha: 1.0)
        ,UIColor(red: 101/255.0, green: 102/255.0, blue: 63/255.0, alpha: 1.0)
        ,UIColor(red: 221/255.0, green: 182/255.0, blue: 20/255.0, alpha: 1.0)//
        ,UIColor(red: 137/255.0, green: 117/255.0, blue: 96/255.0, alpha: 1.0)
        ,UIColor(red: 177/255.0, green: 131/255.0, blue: 47/255.0, alpha: 1.0)
        ,UIColor(red: 199/255.0, green: 187/255.0, blue: 164/255.0, alpha: 1.0)
        ,UIColor(red: 131/255.0, green: 132/255.0, blue: 135/255.0, alpha: 1.0)
        ,UIColor(red: 190/255.0, green: 69/255.0, blue: 79/255.0, alpha: 1.0)
        ,UIColor(red: 73/255.0, green: 73/255.0, blue: 77/255.0, alpha: 1.0)
        ,UIColor(red: 232/255.0, green: 227/255.0, blue: 217/255.0, alpha: 1.0)//
        ,UIColor(red: 212/255.0, green: 202/255.0, blue: 205/255.0, alpha: 1.0)
        ,UIColor(red: 193/255.0, green: 206/255.0, blue: 193/255.0, alpha: 1.0)
        ,UIColor(red: 238/255.0, green: 160/255.0, blue: 166/255.0, alpha: 1.0)
        ,UIColor(red: 211/255.0, green: 222/255.0, blue: 223/255.0, alpha: 1.0)
        ,UIColor(red: 227/255.0, green: 234/255.0, blue: 165/255.0, alpha: 1.0)
        ,UIColor(red: 178/255.0, green: 231/255.0, blue: 159/255.0, alpha: 1.0)
        ,UIColor(red: 173/255.0, green: 163/255.0, blue: 150/255.0, alpha: 1.0)//
        ,UIColor(red: 77/255.0, green: 77/255.0, blue: 77/255.0, alpha: 1.0)
        
    ]
    
    // func that pass a random color from array
    func randomColor() -> UIColor {
        
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}

