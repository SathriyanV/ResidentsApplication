//
//  ContentView.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 21/07/21.
//

import SwiftUI

struct ContentView: View {
        
    @State var index = 2
    @State var offset : CGFloat = -UIScreen.main.bounds.width - 15
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack {
            
            HomeView(index: $index, offset: $offset)
                .frame(height : 140)
                .padding(.top, 5)
            
            GeometryReader { geo in
                HStack {

                    Bookmarks()
                        .frame(width : geo.size.width)
                        
                    Awing()
                        .frame(width : geo.size.width)

                    BWing()
                        .frame(width : geo.size.width)
                }
                .offset(x: self.offset)
            }
            .animation(.easeIn(duration: 0.15))
        }
        .background(Color("Header Background"))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
