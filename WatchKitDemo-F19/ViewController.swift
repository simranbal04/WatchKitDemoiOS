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
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
//MARK: Outlets
    //---------
    @IBOutlet weak var counterLabel: UILabel!

     var phoneCounter:Int = 0
    var messageCounter:Int = 0
    @IBOutlet var sendmsgOutputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("---PHONE APP LOADED!")
        
        
        //@TODO : Does the watch
        if(WCSession.isSupported() == true)
        {
            self.sendmsgOutputLabel.text = "WC is Supported"
            
            //
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        else
        {
            self.sendmsgOutputLabel.text = "WC is not Supported"
        }
        
    }

//    @IBAction func phoneButtonPressed(_ sender: UIButton) {
//
//        print("PHONE BUTTON PRESSED")
//                self.phoneCounter = self.phoneCounter + 1;
//                self.counterLabel.text = "Counter:\(self.phoneCounter)"
//    }
//
    
    @IBAction func sendMsgButton(_ sender: Any) {
        print("sending message to Watch")
        
        if (WCSession.default.isReachable == true) {
            
            let message = ["name":"Nirvair"]
            WCSession.default.sendMessage(message,replyHandler: nil)
            messageCounter = messageCounter + 1
            sendmsgOutputLabel.text = "Message Sent \(messageCounter)"
            }
        else
        {
            messageCounter = messageCounter + 1
                       sendmsgOutputLabel.text = "Cannot reach watch! \(messageCounter)"
        }
        
    }
    
        
    
        
        
//        {
//        print("Output comes here")
//    }
}
    


