//
//  ContentView.swift
//  swift_Video_tut
//
//  Created by G Yashwanth Sharma on 20/09/23.
//

import SwiftUI
import PhotosUI
import AVKit

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        NavigationStack{
            ScrollView{
                ForEach(viewModel.videos){ video in
                    VideoPlayer(player: AVPlayer(url: URL(string: video.videoUrl)!))
                        .frame(height:250)
                }
            }
          
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    PhotosPicker(selection: $viewModel.selectedItem, matching: .any(of: [.videos,.not(.images)])){
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                    
                        
                }
            
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
