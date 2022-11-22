//
//  VideoView.swift
//  StandAid
//
//  Created by India Doria on 11/18/22.
//
import SwiftUI
import AVKit

struct VideoView: View {
    var video: Video
    @State private var player = AVPlayer()
    var body: some View {
        VideoPlayer(player: player)
        •edgesIgnoringSafeArea(.all))
    }
}
struct VideoView Previews: PreviewProvider {
    static var previews: some View {
        VideoView(video: video)
    }
    }
