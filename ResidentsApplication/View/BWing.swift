//
//  BWing.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 21/07/21.
//

import SwiftUI

struct BWing: View {
    
    @StateObject var bookmarkViewModel = BookmarkViewModel()
    @State var clickColor : Bool = false
    
    var body: some View {
        
        VStack {
            ScrollView {
                
                VStack {
                    Text("201")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .background(Color("Green Header"))
                    
                    HStack{
                        Image("2-1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : 55, height: 55)
                            .padding(.horizontal)
                        
                        VStack(spacing : 1){
                            
                            Text("Rahul Singh")
                                .font(.headline)
                                .frame(maxWidth : .infinity, alignment: .leading)
                        
                        }
                        
                        Button(action: {
                            
                            bookmarkViewModel.addToBookmark(
                                section: 201,
                                wing: "B WING",
                                image: "2-1",
                                name: "Rahul Singh",
                                role: "",
                                workRole: "",
                                place: "",
                                comment: "")
                            
//                            clickColor.toggle()
                            
                        }, label: {
                            Image(systemName: clickColor ? "bookmark.fill" : "bookmark")
                                .foregroundColor(clickColor ? Color("Green Header") : .secondary)
                                .font(.title3)
                                .padding(.trailing, 10)
                        })
                        
                    }
                    .padding(.top, 5)
                    .padding(.bottom,5)
                    
                    Divider()
                    
                    VStack {
                        HStack{
                            Image("2-2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 55, height: 55)
                                .padding(.horizontal)
                            
                            VStack(spacing : 3){
                                
                                Text("Chandni Wong")
                                    .font(.headline)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                   
                                Text("Holistic Healer")
                                    .font(.caption2)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                
                                Text("Faith Miracles Wellness")
                                    .font(.caption2)
                                    .textCase(.uppercase)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                            }
                            
                            Button(action: {
                                
                                bookmarkViewModel.addToBookmark(
                                    section: 201,
                                    wing: "B WING",
                                    image: "2-2",
                                    name: "Chandni Wong",
                                    role: "",
                                    workRole: "Holistic Healer",
                                    place: "Faith Miracles Wellness",
                                    comment: "Push yourself, because no one else is going to do it for you.")
                                
//                                clickColor.toggle()
                                
                            }, label: {
                                Image(systemName: clickColor ? "bookmark.fill" : "bookmark")
                                    .foregroundColor(clickColor ? Color("Green Header") : .secondary)
                                    .font(.title3)
                                    .padding(.trailing, 10)
                            })
                            
                        }
                        .padding(.top, 5)
                    }
                    
                    Text("Push yourself, because no one else is going to do it for you.")
                        .font(.caption)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top, 5)
                        .padding(.bottom, 15)
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .padding(.horizontal)
                .padding(.top)
                
                VStack {
                    Text("202")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .background(Color("Green Header"))
                    
                    HStack{
                        Image("2-3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : 55, height: 55)
                            .padding(.horizontal)
                        
                        VStack(spacing : 1){
                            
                            Text("Sarah Duke")
                                .font(.headline)
                                .frame(maxWidth : .infinity, alignment: .leading)
                               
                        }
                        
                        Button(action: {
                            
                            bookmarkViewModel.addToBookmark(
                                section: 202,
                                wing: "B WING",
                                image: "2-3",
                                name: "Sarah Duke",
                                role: "",
                                workRole: "",
                                place: "",
                                comment: "")
                            
//                            clickColor.toggle()
                            
                        }, label: {
                            Image(systemName: clickColor ? "bookmark.fill" : "bookmark")
                                .foregroundColor(clickColor ? Color("Green Header") : .secondary)
                                .font(.title3)
                                .padding(.trailing, 10)
                        })
                        
                    }
                    .padding(.top, 5)
                    .padding(.bottom,5)
                    
                    Divider()
                    
                    VStack {
                        HStack{
                            Image("2-4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 55, height: 55)
                                .padding(.horizontal)
                            
                            VStack(spacing : 3){
                                
                                Text("Dominique Carlton")
                                    .font(.headline)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                   
                            }
                            
                            Button(action: {
                                
                                bookmarkViewModel.addToBookmark(
                                    section: 202,
                                    wing: "B WING",
                                    image: "2-4",
                                    name: "Dominique Carlton",
                                    role: "",
                                    workRole: "",
                                    place: "",
                                    comment: "")
                                
//                                clickColor.toggle()
                                
                            }, label: {
                                Image(systemName: clickColor ? "bookmark.fill" : "bookmark")
                                    .foregroundColor(clickColor ? Color("Green Header") : .secondary)
                                    .font(.title3)
                                    .padding(.trailing, 10)
                            })
                            
                        }
                        .padding(.top, 5)
                        .padding(.bottom)
                    }
                    
                }
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .padding(.horizontal)
                .padding(.top, 10)
            }
        }
        .padding(.leading, 5)
        .padding(.trailing, 15)
        .padding(.bottom)
        .background(Color("Background"))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct BWing_Previews: PreviewProvider {
    static var previews: some View {
        BWing()
            .previewLayout(.sizeThatFits)
    }
}
