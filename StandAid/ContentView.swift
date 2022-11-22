//
//  ContentView.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var settings: Settings

    var body: some View {
        
     HomeView()
        //The HomeView screen contains the navigation for the app
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
