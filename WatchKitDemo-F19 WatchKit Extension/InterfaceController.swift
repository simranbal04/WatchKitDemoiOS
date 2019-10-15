//
//  InterfaceController.swift
//  WatchKitDemo-F19 WatchKit Extension
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("---WATCH APP LOADED")
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    //MARK: Custom functions
       // do something when user presses watch button
      
    @IBAction func watchButtonPressed() {
            print("I CLICKED THE BUTTON")
       }
    
    
    
    
    @IBOutlet weak var msgsfromPhoneLabel: WKInterfaceLabel!
    
}
