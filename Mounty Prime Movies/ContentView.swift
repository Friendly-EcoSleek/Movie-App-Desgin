//
//  ContentView.swift
//  Mounty Prime Movies
//
//  Created by Happy on 23/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            UpComing()
                
                .tabItem {
                    Label("Up Coming", systemImage: "clock")
                }
            
            TopRated()
                .tabItem {
                    Label("Top Rated", systemImage: "star")
                }
        }.navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
