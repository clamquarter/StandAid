//
//  HomeScreen.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import Foundation
import SwiftUI


struct HomeView: View {
    //index is a variable that determines which page of the carousel view the user is on.
    @State private var index = 0
    @State var currentDate = Date()
    //mainColor is a dynamic variable that sets the accent color for the user. it can be passed to other views as a Binding variable
    @State var mainColor: Color = .blue

    var body: some View {
        VStack{
            //
            TabView(selection: $index) {
            ForEach((0..<1), id: \.self) { index in
                CarouselView(customColor: $mainColor)
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
                    DayPicker(customColor: $mainColor)
                    DatePicker("From", selection: $currentDate, displayedComponents: .hourAndMinute)
                    DatePicker("To", selection: $currentDate, displayedComponents: .hourAndMinute)
                }
                ColorPicker("p", selection: $mainColor).labelsHidden()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
