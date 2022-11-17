//
//  DayButton.swift
//  StandAid
//
//  Created by India Doria on 11/15/22.
//

import SwiftUI

struct DayButton: View {
    @State var buttonText = Image(systemName: "c.circle")
    @State var daySelect = false

    var body: some View {
        
        Button ( action: {
            daySelect = true
        }, Image: )
    }
}

struct DayButton_Previews: PreviewProvider {
    static var previews: some View {
        DayButton()
    }
}
