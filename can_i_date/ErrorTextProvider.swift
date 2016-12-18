//
//  ErrorTextProvider.swift
//  can_i_date
//
//  Created by Michel on 12/17/16.
//  Copyright © 2016 coolnerd. All rights reserved.
//

import GameKit

struct ErrorTextProvider {
    let messages = ["Please enter some ages values", "C'mon, type the ages", "Step 1: Ages Step 2: Heart", "Ages, ages, ages", "Enter ages and touch the heart"]
    
    func randomMessage() -> String{
        
        let randomStringMessage = GKRandomSource.sharedRandom().nextInt(upperBound: messages.count)
        return messages[randomStringMessage]
        
        
    }
}
