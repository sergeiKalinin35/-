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
      //  let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
      
       
        cell.textLabel?.text = " Научиться отжиматься:"
        cell.detailTextLabel?.text = " 50 раз в день!"
        
        
       
        cell.imageView?.image = #imageLiteral(resourceName: "зевс")
        cell.imageView?.layer.cornerRadius = tableView.rowHeight / 2
        cell.imageView?.clipsToBounds = true
        
           return cell
       }
    
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
    return 100
    }
       // выбор ячейки когда нажимаем
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    
    
    
    
    
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   
    }
   

}
