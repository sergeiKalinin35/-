//
//  purposeTableViewController.swift
//  Шаги к цели!
//
//  Created by Sergey on 01.08.2021.
//
import UserNotifications
import UIKit




class purposeTableViewController: UITableViewController {
    
    
    var models = [MyReminder]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
        
        
        @IBAction func didTapAdd() {
            
            
            
            
            
            
    }

        @IBAction func didTapTest() {
            
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
                if success{
                    self.scheduleTest()
                    // test
                }
                else if error != nil {
                    
                    print("error occurred")
                    
                }
                
            })
            
            
        
}
        //объект содержимое уведомление
    
    func scheduleTest() {
        let content = UNMutableNotificationContent()
        content.title = "Лили 🦥, поцелуй меня 😘"
        content.sound = .default
        content.body = "Это я 🐣 "
        
        
        let targetDate = Date().addingTimeInterval(20)
        let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second],
                                                                        from: targetDate) ,
                                                   repeats: false)
        
        let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            if error != nil {
                print("something went wrong")
                
            }
            
        })
    }
    


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
        return models.count
        
       }
    
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row].title
        
        
        //    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
      
       //   cell.textLabel?.text = " Научиться отжиматься:"
     //   cell.detailTextLabel?.text = " 50 раз в день!"
        
    //    cell.imageView?.image = #imageLiteral(resourceName: "зевс")
    //    cell.imageView?.layer.cornerRadius = tableView.rowHeight / 2
    //    cell.imageView?.clipsToBounds = true
        
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


struct MyReminder {
    let title: String
    let date: Date
    let identifier: String
    
}
