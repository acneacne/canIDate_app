//
//  ErrorTextProvider.swift
//  can_i_date
//
//  Created by Michel on 12/17/16.
//  Copyright © 2016 coolnerd. All rights reserved.
//

import GameKit

struct ErrorTextProvider {
    let messages = ["Please enter some ages values", "Come on, type the ages", "Step 1: Ages. Step 2: Heart", "Ages, ages, ages", "Enter ages and touch the heart","The instructions are easy: Enter ages", "Not so fast. First enter the ages","Ouch!"]
    
    func randomMessage() -> String{
        
        let randomStringMessage = GKRandomSource.sharedRandom().nextInt(upperBound: messages.count)
        return messages[randomStringMessage]
        
        
    }
}



