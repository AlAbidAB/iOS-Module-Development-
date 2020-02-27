//
//  ViewController.swift
//  SeveralTimeLocalNotification
//
//  Created by Abid AB on 25/2/20.
//  Copyright © 2020 Abid AB. All rights reserved.
//

import UIKit
import UserNotifications


extension ViewController: UNUserNotificationCenterDelegate{
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
}


class ViewController: UIViewController {

    let contnet = UNMutableNotificationContent()
    var dateComponents = DateComponents()
 
    let time : [Int] = [16,17]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         UNUserNotificationCenter.current().delegate = self
         severalTime()

    }
    
    public func severalTime(){

        
        _ = Timer.scheduledTimer(timeInterval: 60, target: self,
                                 selector: #selector(updateLabel), userInfo: nil, repeats: true)

    }
    
    @objc func updateLabel()
    {

        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        
        for i in 0...time.count-1 {
            
            
            print("Else before Hour ",hour)
            print("Else before Minite ", minutes)
            print("Before time", time[i])
            
            
            if hour == time[i] {
                
                if minutes == 9{
                    
                    notify()
                }
                else{
                    print("Wait")
                }

            }

            else{
                print("Hour ",hour)
                print("Minite ", minutes)
            }
        }
        
    }
    
    func notify(){
        
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        
          contnet.title = "Notifition"
          contnet.subtitle = "Remind"
          contnet.body = "Buy Itmes which was told"
          contnet.sound = UNNotificationSound.default
        
          dateComponents.calendar = Calendar.current
         
          dateComponents.hour = hour

          dateComponents.minute = minutes
          
          let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
          
          let request = UNNotificationRequest(identifier: "Notification Bar", content: contnet, trigger: trigger)
         
         print("success")
          
          UNUserNotificationCenter.current().add(request) { (error) in
              print(error?.localizedDescription as Any)
              
          }
    }
    
}

