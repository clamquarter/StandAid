//
//  DayPicker.swift
//  StandAid
//
//  Created by India Doria on 11/15/22.
//

import SwiftUI

struct MultiPicker: View {
    @Binding var customColor: Color

    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                           .fill(.black)
                           .frame(width: 380, height: 50)
                                  
            HStack{
                PickerButton(customColor: $customColor, buttonText: "s")
                PickerButton(customColor: $customColor,buttonText: "m")
                PickerButton(customColor: $customColor,buttonText: "t")
                PickerButton(customColor: $customColor,buttonText: "w")
                PickerButton(customColor: $customColor,buttonText: "t")
                PickerButton(customColor: $customColor,buttonText: "f")
                PickerButton(customColor: $customColor,buttonText: "s")
            }
        }
        
    }
}

//struct DayPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        DayPicker(color: $color)
//    }
//}
