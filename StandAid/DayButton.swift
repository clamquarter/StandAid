//
//  DayButton.swift
//  StandAid
//
//  Created by India Doria on 11/15/22.
//

import SwiftUI

struct DayButton: View {
    @Binding var customColor: Color
    @State var daySelected = false
    // @State var colorLetterDay = Color.blue
    var buttonText = "s"
    var fontSize = 50
    var body: some View {
             Button ( action: {
                 daySelected.toggle()
                 
//                 if daySelected{
//                     customColor = .pink
//                
//                 } else {
//                     customColor = .gray
//                     
//                 }
             })
             {

                 if daySelected{
                     Image(systemName: "\(buttonText).circle.fill").tint(customColor)
                         .font(.system(size: 35))
                
                 }
                 else{
                     
                     Image(systemName: "\(buttonText).circle").tint(customColor)
                         .font(.system(size: 35))
                         
                     
                 }
                 
                 
             }
             
//        Toggle(isOn: $daySelect) {
//            Image(systemName: buttonText)
//                .font(.system(size: 36))
//
//        }.toggleStyle(.button)
//            .clipShape(Circle())
//        Toggle {
//            print("Edit button was tapped")
//        } label: {
//            I
//        }.toggleStyle(.button)
    }
    
}

//struct DayButton_Previews: PreviewProvider {
//    static var previews: some View {
//        DayButton()
//    }
//}
