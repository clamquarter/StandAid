//
//  Settings.swift
//  StandAid
//
//  Created by India Doria on 11/18/22.
//

import SwiftUI

class Settings: ObservableObject {
    @Published var customColor = Color.blue
   @Published var alertMessage = "Go touch grass!"
    //the push notification interval in seconds
    @Published  var alertInterval: Int = 1800

}

//struct Settings_Previews: PreviewProvider {
//    static var previews: some View {
//        Settings()
//    }
//}
