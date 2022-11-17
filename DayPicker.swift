//
//  DayPicker.swift
//  StandAid
//
//  Created by India Doria on 11/15/22.
//

import SwiftUI

struct DayPicker: View {
    @State var color = Color.blue
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                           .fill(.black)
                           .frame(width: 360, height: 50)
            HStack{
                DayButton(buttonText: Image(systemName: "c.circle"))
//                DayButton(buttonText: "M")
//                DayButton(buttonText: "Tu")
//                DayButton(buttonText: "W")
//                DayButton(buttonText: "Th")
//                DayButton(buttonText: "F")
//                DayButton(buttonText: "Sa")

//                Toggle("M", isOn: $DaySelect)
//                    .toggleStyle(.button)
//                    .tint(.pink)
//                    .clipShape(Circle())
            }
        }
        
    }
}

struct DayPicker_Previews: PreviewProvider {
    static var previews: some View {
        DayPicker()
    }
}
