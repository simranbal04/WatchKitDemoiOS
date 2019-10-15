//
//  ViewController.swift
//  WatchKitDemo-F19
//
//  Created by MacStudent on 2019-10-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import WatchConnectivity // build in lib for making phone <> watch communicatoon

class ViewController: UIViewController, WCSessionDelegate
{
    //built in methods for dealing with communication between watch <> phone
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        <#code#>
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        <#code#>
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        <#code#>
    }
    
//MARK: Outlets
    //---------
    @IBOutlet weak var counterLabel: UILabel!

     var phoneCounter:Int = 0
    var messageCounter:Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print("---PHONE APP LOADED!")
    }

    @IBAction func phoneButtonPressed(_ sender: UIButton) {
        
        print("PHONE BUTTON PRESSED")
                self.phoneCounter = self.phoneCounter + 1;
                self.counterLabel.text = "Counter:\(self.phoneCounter)"
    }
    
    
    @IBAction func sendMsgButton(_ sender: Any) {
        print("sending message to phone")
    }
    
        
    }
    


