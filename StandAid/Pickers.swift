//
//  Pickers.swift
//  StandAid
//
//  Created by India Doria on 11/21/22.
//

import SwiftUI

var intervalPicker = HStack {
    PickerButton(buttonText: "30")
    PickerButton(buttonText: "60")
    PickerButton(buttonText: "90")
    PickerButton(buttonText: "180")
}

var dayPicker = HStack{
    PickerButton(buttonText: "s")
    PickerButton(buttonText: "m")
    PickerButton(buttonText: "t")
    PickerButton(buttonText: "w")
    PickerButton(buttonText: "t")
    PickerButton(buttonText: "f")
    PickerButton(buttonText: "s")
}
