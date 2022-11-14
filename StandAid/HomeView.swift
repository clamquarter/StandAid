//
//  HomeScreen.swift
//  StandAid
//
//  Created by India Doria on 11/14/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            GraphsView()
            Text("This is where the graphs and such go (in a carousel). They'll be static while the settings and such are in a scroll view.").font(.title2).bold()
            
            ScrollView{
                Text("Settings and Such:").font(.title)
                Text("I'm baby aesthetic everyday carry live-edge squid cray master cleanse umami iPhone pour-over. DSA pinterest fam, lyft tacos jianbing blue bottle. Fashion axe gochujang YOLO, godard banjo tousled yr green juice bodega boys polaroid hexagon vegan. Paleo knausgaard slow-carb literally, intelligentsia roof party lomo bitters.").font(.headline).foregroundColor(.teal)
                Text("Vinyl tote bag palo santo tonx small batch letterpress distillery XOXO DSA fam migas roof party cray 8-bit ennui. Taxidermy polaroid small batch cornhole hoodie. Portland unicorn williamsburg slow-carb art party chia PBR&B small batch you probably haven't heard of them hell of schlitz VHS snackwave. Direct trade farm-to-table praxis meditation banh mi.").font(.caption2).foregroundColor(.pink)
                Text("I'm baby aesthetic everyday carry live-edge squid cray master cleanse umami iPhone pour-over. DSA pinterest fam, lyft tacos jianbing blue bottle. Fashion axe gochujang YOLO, godard banjo tousled yr green juice bodega boys polaroid hexagon vegan. Paleo knausgaard slow-carb literally, intelligentsia roof party lomo bitters.").font(.largeTitle)
                
            }
        }
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
