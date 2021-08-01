//
//  ViewController.swift
//  Шаги к цели!
//
//  Created by Sergey on 01.08.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goActiv() {
        performSegue(withIdentifier: "Q", sender:nil)
        
        
    }
}

