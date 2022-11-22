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
        VStack{
          
            ZStack{
                //RoundedRectangle(cornerRadius: 25, style: .continuous)
                   // .fill(.black)
                   // .frame(width: 380, height: 50)
                dayPicker
                    .foregroundColor(customColor)
            }
            Divider()

            ZStack{
                //RoundedRectangle(cornerRadius: 25, style: .continuous)
                    //.fill(.black)
                   // .frame(width: 380, height: 50)
                intervalPicker
                    .foregroundColor(customColor)
            }
            
        }
    }
}

//struct DayPicker_Previews: PreviewProvider {
//    static var previews: some View {
//        DayPicker(color: $color)
//    }
//}
