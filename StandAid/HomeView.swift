//
//  HomeScreen.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import Foundation
import SwiftUI


struct HomeView: View {
    @State private var index = 0
    @State var currentDate = Date()


    var body: some View {
        VStack{
            //
            TabView(selection: $index) {
            ForEach((0..<1), id: \.self) { index in
                CarouselView()
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(height: 300)
            Divider()
            Spacer()
//           This is where the graphs and such go (in a carousel). They'll be static while the settings and such are in a scroll view.").font(.title2).bold()
            
            ScrollView{
                Text("Settings and Such:").font(.title)
                VStack{
                    DayPicker()
                    DatePicker("From", selection: $currentDate, displayedComponents: .hourAndMinute)
                    DatePicker("To", selection: $currentDate, displayedComponents: .hourAndMinute)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
