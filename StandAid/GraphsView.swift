//
//  GraphsView.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import SwiftUI
import Charts

struct GraphsView: View {
    let minutesStood = [30, 10, 20, 15, 40, 50, 15]
    var data = ["sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
    
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
                )
                BarMark(
                    x: .value("Shape Type", data[2]),
                    y: .value("Total Count", minutesStood[2])
                )
                BarMark(
                    x: .value("Shape Type", data[3]),
                    y: .value("Total Count", minutesStood[3])
                )
                BarMark(
                    x: .value("Shape Type", data[4]),
                    y: .value("Total Count", minutesStood[4])
                )
                BarMark(
                    x: .value("Shape Type", data[5]),
                    y: .value("Total Count", minutesStood[5])
                )
//                BarMark(
//                    x: .value("Shape Type", data[6]),
//                    y: .value("Total Count", minutesStood[6])
//                )
            }.foregroundColor(.blue).font(.custom("Impact", size: 24))
            
        }    }
}

struct GraphsView_Previews: PreviewProvider {
    static var previews: some View {
        GraphsView()
    }
}
