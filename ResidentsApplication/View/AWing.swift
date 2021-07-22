//
//  AWing.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 21/07/21.
//

import SwiftUI

struct Awing: View {
       
    @StateObject var bookmarkViewModel = BookmarkViewModel()
    @State var clickColor : Bool = false
    
    var body: some View {
        VStack {
            ScrollView {
                
                VStack {
                    Text("101")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .background(Color("Green Header"))
                    
                    HStack{
                        Image("1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : 55, height: 55)
                            .padding(.horizontal)
                        
                        VStack(spacing : 1){
                            
                            Text("Grace Kelly")
                                .font(.headline)
                                .frame(maxWidth : .infinity, alignment: .leading)
                               
                            Text("Committe Member")
                                .font(.caption2)
                                .fontWeight(.semibold)
                                .textCase(.uppercase)
                                .foregroundColor(Color("Green Header"))
                                .frame(maxWidth : .infinity, alignment: .leading)
                        }
                        
                        Button(action: {
                           
                            bookmarkViewModel.addToBookmark(
                                section: 101,
                                wing: "A WING",
                                image: "1",
                                name: "Grace Kelly",
                                role: "COMMITTE MEMBER",
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
                            Image("2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 55, height: 55)
                                .padding(.horizontal)
                            
                            VStack(spacing : 3){
                                
                                Text("Amy Johnson")
                                    .font(.headline)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                   
                                Text("Senoir Vice President, Marketing")
                                    .font(.caption2)
                                    .textCase(.uppercase)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                
                                Text("CRYBOT SYSTEMS")
                                    .font(.caption2)
                                    .textCase(.uppercase)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                            }
                            
                            Button(action: {
                                
                                bookmarkViewModel.addToBookmark(
                                    section: 101,
                                    wing: "A WING",
                                    image: "2",
                                    name: "Amy Johnson",
                                    role: "COMMITTE MEMBER",
                                    workRole: "Senoir Vice President, Marketing",
                                    place: "CRYBOT SYSTEMS",
                                    comment: "Success is not easy and is certainley not for lazy.")
                                
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
                    
                    Text("Success is not easy and is certainley not for lazy.")
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
                    Text("102")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .background(Color("Green Header"))
                    
                    HStack{
                        Image("3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : 55, height: 55)
                            .padding(.horizontal)
                        
                        VStack(spacing : 1){
                            
                            Text("Charlie Tabbot")
                                .font(.headline)
                                .frame(maxWidth : .infinity, alignment: .leading)
                               
                            Text("Committe Member, moderator")
                                .font(.caption2)
                                .fontWeight(.semibold)
                                .textCase(.uppercase)
                                .foregroundColor(Color("Green Header"))
                                .frame(maxWidth : .infinity, alignment: .leading)
                        }
                        
                        Button(action: {
                            
                            bookmarkViewModel.addToBookmark(
                                section: 102,
                                wing: "A WING",
                                image: "3",
                                name: "Charlie Tabbot",
                                role: "Committe Member, moderator",
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
                            Image("4")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 55, height: 55)
                                .padding(.horizontal)
                            
                            VStack(spacing : 3){
                                
                                Text("Stephan Blarrisk")
                                    .font(.headline)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                
                            }
                            
                            Button(action: {
                                
                                bookmarkViewModel.addToBookmark(
                                    section: 102,
                                    wing: "A WING",
                                    image: "4",
                                    name: "Stephan Blarrisk",
                                    role: "",
                                    workRole: "",
                                    place: "",
                                    comment: "The biggest slap to your enemies is your success.")
                                
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
                    
                    Text("The biggest slap to your enemies is your success.")
                        .font(.caption)
                        
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .padding(.leading)
                        .padding(.top, 5)
                        .padding(.bottom, 5)
                    
                    Divider()
                    
                    VStack {
                        HStack{
                            Image("5")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 55, height: 55)
                                .padding(.horizontal)
                                .padding(.bottom)
                                
                            VStack(spacing : 3){
                                
                                Text("Toby Snow")
                                    .font(.headline)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                
                                Text("Committe Member")
                                    .font(.caption2)
                                    .fontWeight(.semibold)
                                    .textCase(.uppercase)
                                    .foregroundColor(Color("Green Header"))
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                   
                                Text("General Manager, SE Asia")
                                    .font(.caption2)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                
                                Text("MASTIFF SPACE MINING")
                                    .font(.caption2)
                                    .textCase(.uppercase)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                            }
                            
                            Button(action: {
                                
                                bookmarkViewModel.addToBookmark(
                                    section: 102,
                                    wing: "A WING",
                                    image: "5",
                                    name: "Toby Snow",
                                    role: "Committe Member",
                                    workRole: "General Manager, SE Asia",
                                    place: "MASTIFF SPACE MINING",
                                    comment: "Great people talk about ideas, medium people about themselves & small people talk about others.")
                                
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
                    
                    Text("Great people talk about ideas, medium people about themselves & small people talk about others.")
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
                .padding(.top, 10)
                
                VStack {
                    Text("103")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .foregroundColor(.white)
                        .frame(maxWidth : .infinity, alignment: .leading)
                        .background(Color("Green Header"))
                    
                    HStack{
                        Image("6")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width : 55, height: 55)
                            .padding(.horizontal)
                        
                        VStack(spacing : 1){
                            
                            Text("Margaret Brown")
                                .font(.headline)
                                .frame(maxWidth : .infinity, alignment: .leading)
                               
                        }
                        
                        Button(action: {
                            
                            bookmarkViewModel.addToBookmark(
                                section: 103,
                                wing: "A WING",
                                image: "6",
                                name: "Margaret Brown",
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
                            Image("7")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width : 55, height: 55)
                                .padding(.horizontal)
                            
                            VStack(spacing : 3){
                                
                                Text("Keith Samuels")
                                    .font(.headline)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                   
                                Text("Senior Faculty")
                                    .font(.caption2)
                                    .textCase(.uppercase)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                                
                                Text("ST DRUID COLLEGE")
                                    .font(.caption2)
                                    .textCase(.uppercase)
                                    .frame(maxWidth : .infinity, alignment: .leading)
                            }
                            
                            Button(action: {
                                
                                bookmarkViewModel.addToBookmark(
                                    section: 103,
                                    wing: "A WING",
                                    image: "7",
                                    name: "Keith Samuels",
                                    role: "",
                                    workRole: "Senior Faculty",
                                    place: "ST DRUID COLLEGE",
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
        .padding(.trailing, 12)
        .padding(.bottom)
        .background(Color("Background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Awing_Previews: PreviewProvider {
    
    static var previews: some View {
        Awing()
            .previewLayout(.sizeThatFits)
    }
}
