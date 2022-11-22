//
//  HomeScreen.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import Foundation
import SwiftUI
import CoreHaptics



struct HomeView: View {
    //index is a variable that determines which page of the carousel view the user is on.
    @State private var index = 0
    @State var currentDate = Date()

    @StateObject var settings = Settings()

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
                Text("Select Day to Be Notified").font(.body)
                VStack{
                    MultiPicker(customColor: $mainColor)
                    
                    DatePicker("From", selection: $currentDate, displayedComponents: .hourAndMinute)
                    DatePicker("To", selection: $currentDate, displayedComponents: .hourAndMinute)
                    
                    //the user can specify the frequeny of the alerts here. the tags are in seconds; the text is in minutes
                    
                    
                    Picker(selection: $settings.alertInterval, label: Text("Frequency")) {
                        Text("30").tag(1800)
                        Text("60").tag(3600)
                        Text("90").tag(5400)
                        Text("120").tag(7200)
                    }.pickerStyle(.segmented)
                        .foregroundColor(mainColor)
//                        .onReceive([self.alertInterval].publisher.first()) {
//                            //value in self.doSomethingWith(value: value)
//                            mainColor = Color.yellow
//                         }
                    ColorPicker("p", selection: $mainColor).labelsHidden()
                    //test
                    Notifications()
                }
            }
        }

    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().preferredColorScheme(.dark)
    }
}
