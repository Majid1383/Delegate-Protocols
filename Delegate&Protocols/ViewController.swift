//
//  ViewController.swift
//  Delegate&Protocols
//
//  Created by AbdulMajid Shaikh on 04/05/24.
//

import UIKit

class ViewController: UIViewController, moveToFirstVCProtocol{

    func moveBack(data: String) {
        lblEmailAddress.text = data
    }
    
    //Create uiLabel outlet.
    @IBOutlet weak var lblEmailAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //When user clicks on "MovetoVC2" btn.
    @IBAction func btnMoveToVC2Clicked(_ sender: UIButton) {
        
        // Declaring the "Main.storyBoard"
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        //Declaring the vc as "SecondViewController"
        let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //Declaring the Delegate method here.
        vc.delegate = self
        
        //Navigating to SecondViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}




