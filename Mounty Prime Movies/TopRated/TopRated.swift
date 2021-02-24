//
//  TopRated.swift
//  Mounty Prime Movies
//
//  Created by Happy on 23/02/21.
//

import SwiftUI

struct TopRated: View {
    let movieName: [String] = ["Bahubali-1","Saaho", "Kishila Krishina", "The Red Chair"]
    let movieImages : [String] = ["3", "2", "1", "4"]
    @State var id2 = 0
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill((LinearGradient(gradient: Gradient(colors: [Color.white, Color.gray]), startPoint: .top, endPoint: .bottom)))
                .edgesIgnoringSafeArea(.all)
            VStack{
                VStack{
                    Text("Top-Rated Movies")
                        .font(Font.custom("OpenSans-Bold", size: 20))
                        .foregroundColor(.black)
                        .opacity(0.8)
                }
                ScrollView(.vertical, showsIndicators: false) {
                    ForEach(0..<self.movieName.count){id in
                        NavigationLink(destination: TopRatedDetails(id2: id)){
                        VStack{
                            Image("\(movieImages[id])")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width-22, height: 250, alignment: .center)
                            Text("\(self.movieName[id])")
                                .font(Font.custom("OpenSans-Bold", size: 17))
                                .foregroundColor(.black)
                                .opacity(0.6)
                        }
                        }
                    }
                }
                Spacer()
            }.navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct TopRated_Previews: PreviewProvider {
    static var previews: some View {
        TopRated()
    }
}
