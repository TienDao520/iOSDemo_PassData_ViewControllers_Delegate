//
//  ViewController.swift
//  PassData_ViewControllers_Delegate
//
//  Created by Tien Dao on 2022-05-26.
//

import UIKit

protocol SendDataDelegate {
    func sendMessage(text:String)
}

class FirstViewController: UIViewController, SendDataDelegate {
    func sendMessage(text: String) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

