//
//  RootViewController.swift
//  app
//
//  Created by utkrisht on 5/11/19.
//  Copyright © 2019 utkrisht. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase










class RootViewController: UIViewController{
    
    //////////////////////////////////////////////
    func led (state:String){
        let ref = Database.database().reference()
        let post : [String: Any] = ["state" : state]
        ref.child("led").setValue(post)
    }
    
    func hover (state:String){
        let ref = Database.database().reference()
        let post : [String: Any] = ["state" : state]
        ref.child("hover").setValue(post)
    }
    
    func follow (state:String){
        let ref = Database.database().reference()
        let post : [String: Any] = ["state" : state]
        ref.child("follow").setValue(post)
    }
    func failsafe (state:String){
        let ref = Database.database().reference()
        let post : [String: Any] = ["state" : state]
        ref.failsafe("led").setValue(post)
    }
    
    
    
    
    
    @IBAction func hover(_ sender: UISwitch) {
        if sender.isOn{
             led(state: "ON")
            
        }
        else{
             led(state: "OFF")
        }
    }
    
    
   
    
/*    
    @IBAction func onViewTap(_ sender: UITapGestureRecognizer) {
        if view.backgroundColor == UIColor.red{
            led(state: "ON")
            view.backgroundColor = UIColor.green
        }
        else{
            led(state: "OFF");view.backgroundColor = UIColor.red
                }
    }

    
    
    func led (state:String){
        let ref = Database.database().reference()
        let post : [String: Any] = ["state" : state]
        ref.child("led").setValue(post)
    }
    
 
    
     override func viewDidLoad() {
        super.viewDidLoad()
      //  led(state: "OFF")
        view.backgroundColor = UIColor.blue
    }
    
 */
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}



