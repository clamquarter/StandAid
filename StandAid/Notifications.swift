//
//  Notifications.swift
//  StandAid
//
//  Created by India Doria on 11/18/22.
//

import SwiftUI
import UserNotifications


struct Notifications: View {
    @StateObject var settings = Settings()

    
    var body: some View {
        VStack{
            Button("⚙️") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
                    //this code will be run if the user agrees to notifications
                    if success {
                        let content = UNMutableNotificationContent()
                        content.title = "StandAid"
                        content.subtitle = settings.alertMessage
                        content.sound = UNNotificationSound.default

                        // show this notification X seconds from now
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(settings.alertInterval), repeats: false)

                        // choose a random identifier
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                        // add our notification request
                        UNUserNotificationCenter.current().add(request)
                        print("the alert frequency is \(settings.alertInterval) seconds")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
//            Button("Disable Notification") {
//
//            }
        }
        
    }
}

struct Notifications_Previews: PreviewProvider {
    static var previews: some View {
        Notifications()
    }
}
