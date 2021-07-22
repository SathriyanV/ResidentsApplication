//
//  HomeView.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 21/07/21.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var bookmarkViewModel = BookmarkViewModel()
    @State var bookmark : Bool = false
    @State var aWing : Bool = false
    @State var bWing : Bool = false
    
    @Binding var index : Int
    @Binding var offset : CGFloat
    var width = UIScreen.main.bounds.width + 12
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                Text("Residents")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading)
                    .padding(.bottom, 10)
                    .padding(.top, 50)
                    .foregroundColor(.white)
                    .frame(maxWidth : .infinity, alignment: .leading)
                
                HStack(spacing : 18) {
                    
                    Button(action: {
                        
                        self.index = 1
                        self.offset = 0
                        
                        
                    }, label: {
                        
                        VStack {
                            Text("Bookmarks")
                                .font(Font.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(.white.opacity(index == 1 ? 1 : 0.6))
                                .textCase(.uppercase)
                            
                            Rectangle()
                                .fill(Color("Green Header").opacity(index == 1 ? 1 : 0.0))
                                .frame(width : 115, height : 6)
                        }
                        .frame(maxWidth : .infinity)
                           
                    })
                    
                    Button(action: {
                        
                        self.index = 2
                        self.offset = -self.width
                        bookmarkViewModel.fetchResidentData()
                        
                    }, label: {
                        VStack {
                            Text("A Wing")
                                .font(Font.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(.white.opacity(index == 2 ? 1 : 0.6))
                                .textCase(.uppercase)
                            
                            Rectangle()
                                .fill(Color("Green Header").opacity(index == 2 ? 1 : 0.0))
                                .frame(width : 80, height : 6)
                        }
                        .frame(maxWidth : .infinity)

                    })
                    
                    Button(action: {
                        
                        self.index = 3
                        self.offset = -(self.width + self.width)
                       
                    }, label: {
                        VStack {
                            Text("B wing")
                                .font(Font.system(size: 18))
                                .fontWeight(.semibold)
                                .foregroundColor(.white.opacity(index == 3 ? 1 : 0.6))
                                .textCase(.uppercase)
                            
                            Rectangle()
                                .fill(Color("Green Header").opacity(index == 3 ? 1 : 0.0))
                                .frame(width : 80, height : 6)
                        }
                        .frame(maxWidth : .infinity)
                            
                    })
                    
                    Spacer()
                        .frame(width : 50)
                }
                .padding(.top, 15)
                .padding(.leading)
                .frame(maxWidth : .infinity, alignment: .leading)
            }
                
        }
        .frame(maxWidth : .infinity, maxHeight: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.all)
    }
}

