//
//  SecondViewController.swift
//  Delegate&Protocols
//
//  Created by AbdulMajid Shaikh on 04/05/24.
//

import UIKit

protocol moveToFirstVCProtocol : Any {
    func moveBack(data : String)
}


class SecondViewController: UIViewController {
    
    //Declaring UITextField
    @IBOutlet weak var textfieldEmailAddress: UITextField!
    
    var delegate : moveToFirstVCProtocol? //Declaring the delegate of the protocol now,
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //When user clicks on "MoveToVC1" button
    @IBAction func btnMoveToVCClicked(_ sender: UIButton) {
      
        //Calling the textfieldEmailAddress.text as String
        delegate?.moveBack(data: textfieldEmailAddress.text!)
        
        //Popping the Screen Back to the previous ViewController.
        self.navigationController?.popViewController(animated: true)
    }
    
}



//    func getEmail(){
//        delegate?.moveBack(data: textfieldEmailAddress.text!)
//        print("textfieldEmailAddress.text --> \(textfieldEmailAddress.text)")
//    }


//getEmail()






