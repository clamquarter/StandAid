//
//  DayPicker.swift
//  StandAid
//
//  Created by India Doria on 11/15/22.
//

import SwiftUI

struct DayPicker: View {
    @Binding var customColor: Color

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                           .fill(.black)
                           .frame(width: 380, height: 50)
                                  
            HStack{
                DayButton(customColor: $customColor, buttonText: "s")
                DayButton(customColor: $customColor,buttonText: "m")
                DayButton(customColor: $customColor,buttonText: "t")
                DayButton(customColor: $customColor,buttonText: "w")
                DayButton(customColor: $customColor,buttonText: "t")
                DayButton(customColor: $customColor,buttonText: "f")
                DayButton(customColor: $customColor,buttonText: "s")
            }
        }
        
    }
}

//struct DayPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        DayPicker(color: $color)
//    }
//}
