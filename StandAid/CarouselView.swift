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

//
struct MultiSelector<LabelView: View, Selectable: Identifiable & Hashable>: View {
    let label: LabelView
    let options: [Selectable]
    let optionToString: (Selectable) -> String
    var selected: Binding<Set<Selectable>>

    private var formattedSelectedListString: String {
        ListFormatter.localizedString(byJoining: selected.wrappedValue.map { optionToString($0) })
    }

    var body: some View {
        NavigationLink(destination: multiSelectionView()) {
            HStack {
                label
                Spacer()
                Text(formattedSelectedListString)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.trailing)
            }
        }
    }

    private func multiSelectionView() -> some View {
        Text("TODO: add multi selection detail view here")
    }
}
//

struct GraphsView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
