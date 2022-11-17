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
                           .frame(width: 380, height: 50
                                  //
            HStack{
                DayButton(buttonText: "s")
                DayButton(buttonText: "m")
                DayButton(buttonText: "t")
                DayButton(buttonText: "w")
                DayButton(buttonText: "t")
                DayButton(buttonText: "f")
                DayButton(buttonText: "s")
            }
        }
        
    }
}

struct DayPicker_Previews: PreviewProvider {
    static var previews: some View {
        DayPicker()
    }
}
