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
        print(text)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //passing data automatically
        perform(#selector(advance), with: nil, afterDelay: 2)
    }

    @objc func advance() {
        let vc2 = SecondViewController()
        vc2.delegate = self
        vc2.sentTextToSecondVC = "sent Text ToSecond VC"
        present(vc2, animated: true, completion: nil)
    }

}


class SecondViewController: UIViewController {
    var delegate:SendDataDelegate?
    var sentTextToSecondVC:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        print(sentTextToSecondVC)
        
    }
    
    
}
