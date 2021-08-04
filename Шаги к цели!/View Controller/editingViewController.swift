//
//  editingViewController.swift
//  Шаги к цели!
//
//  Created by Sergey on 01.08.2021.
//

import UIKit

class editingViewController: UIViewController {
    
    @IBOutlet var titleField: UITextField!
    @IBOutlet var bodyField: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    
    
    
    
    public var completion: ((String, String, Date) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

}
    
    
    @IBAction func didTapSaveButton() {
        
        if let titleText = titleField.text, !titleText.isEmpty,
           let bodyText = bodyField.text, !bodyText.isEmpty {
            
  //          let targetDate = datePicker.date
            
            
            
        }
        
        
    }
    
    
    
    
}
