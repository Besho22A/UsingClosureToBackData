//
//  ViewController.swift
//  UsingClosureToBackData
//
//  Created by Beshoy Atef on 03/07/2025.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var nameBackLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveButtonPressed(_ sender: Any) {
        let ProfileVC = storyboard?.instantiateViewController(identifier: "ProfileViewController") as? ProfileViewController
        ProfileVC?.modalPresentationStyle = .fullScreen
        ProfileVC?.dataBackClosure = { name in self.nameBackLabel.text = name }
        present(ProfileVC!, animated: true, completion: nil)
    }
    
}

