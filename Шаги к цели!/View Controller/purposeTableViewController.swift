//
//  purposeTableViewController.swift
//  Шаги к цели!
//
//  Created by Sergey on 01.08.2021.
//

import UIKit

class purposeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      

    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
      10
       }

       
       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = " Cell Index: \(indexPath.row)"
        
           return cell
       }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
       

    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
    }
   

}
