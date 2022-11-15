//
//  GraphsView.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import SwiftUI
import Charts

struct CarouselView: View {
    //minutesStood and data are placeholder data.
    let minutesStood = [30, 10, 20, 15, 40, 50, 15]
    var data = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
    
    //each VStack in this View represents a "page" of the carousel
    
    var body: some View {
        VStack {
            Chart {
//                BarMark(
//                    x: .value("Shape Type", data[0]),
//                    y: .value("Total Count", minutesStood[0])
//                )
                BarMark(
                    x: .value("Shape Type", data[1]),
                    y: .value("Total Count", minutesStood[1])
                )                .cornerRadius(50)

                BarMark(
                    x: .value("Shape Type", data[2]),
                    y: .value("Total Count", minutesStood[2])
                )               .cornerRadius(50)

                BarMark(
                    x: .value("Shape Type", data[3]),
                    y: .value("Total Count", minutesStood[3])
                )               .cornerRadius(50)

                BarMark(
                    x: .value("Shape Type", data[4]),
                    y: .value("Total Count", minutesStood[4])
                )               .cornerRadius(50)

                BarMark(
                    x: .value("Shape Type", data[5]),
                    y: .value("Total Count", minutesStood[5])
                )                .cornerRadius(50)

//                BarMark(
//                    x: .value("Shape Type", data[6]),
//                    y: .value("Total Count", minutesStood[6])
//                )
            }.foregroundColor(.blue).font(.custom("Impact", size: 24))
Divider()
        }
        VStack{
            Text("Does the carousel work??")
            Divider()

        }
        VStack{
            Text("Stuff")
            Divider()
        }
    }
}

struct GraphsView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
