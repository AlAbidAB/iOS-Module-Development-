//
//  ViewController.swift
//  LocalNotificationsDemo
//


import UIKit
import UserNotifications




extension ViewController: UNUserNotificationCenterDelegate{
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert, .badge, .sound])
    }
}

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().delegate = self
        // sendNotification()
        
        schedule()
        
    }
    
    public func sendNotification (){
        
        let contnet = UNMutableNotificationContent()
        contnet.title = "Notifition"
        contnet.subtitle = "Remind"
        contnet.body = "Buy Itmes which was told"
        contnet.sound = UNNotificationSound.default
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60.0, repeats: true)
        let request = UNNotificationRequest(identifier: "Notification Bar", content: contnet, trigger: trigger)
        UNUserNotificationCenter.current().add(request) { (error) in
            print(error?.localizedDescription as Any)
        }
        
    }
    
    func schedule(){
        
        let contnet = UNMutableNotificationContent()
        contnet.title = "Notifition"
        contnet.subtitle = "Remind"
        contnet.body = "Buy Itmes which was told"
        contnet.sound = UNNotificationSound.default
        var dateComponents = DateComponents()
        dateComponents.calendar = Calendar.current
        
        dateComponents.hour = 16
        
        dateComponents.minute = 15
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        let request = UNNotificationRequest(identifier: "Notification Bar", content: contnet, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            print(error?.localizedDescription as Any)
            
        }
    }
}



