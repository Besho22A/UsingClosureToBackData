//
//  ProfileViewController.swift
//  UsingClosureToBackData
//
//  Created by Beshoy Atef on 03/07/2025.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet var dataNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        if let name = dataNameTF.text {
            dataBackClosure?(name)
            dismiss(animated: true, completion: nil)
        }
        
    }
    

    var dataBackClosure: ((_ name: String) -> Void)?
    

}
