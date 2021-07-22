//
//  Bookmarks.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 21/07/21.
//

import SwiftUI

struct Bookmarks: View {
    
    @StateObject var bookmarkViewModel = BookmarkViewModel()
    
    @State var clickColor : Bool = false
        
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    
                    ForEach(bookmarkViewModel.residentData) {item in
                        
                        VStack {
                            HStack {
                                Text("\(item.section)")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .foregroundColor(.white)
                                    
                                Text(item.wing ?? "")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .padding(.vertical, 10)
                                    .foregroundColor(.white)
                            }
                            .frame(maxWidth : .infinity, alignment: .leading)
                            .background(Color("Green Header"))
                            
                            VStack {
                                HStack{
                                    Image(item.image ?? "")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width : 55, height: 55)
                                        .padding(.horizontal)
                                    
                                    ZStack {
                                        VStack(spacing : 3){
                                            
                                            Text(item.name ?? "")
                                                .font(.headline)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                                
                                            Text(item.role ?? "")
                                                .font(.caption2)
                                                .foregroundColor(Color("Green Header"))
                                                .textCase(.uppercase)
                                                .frame(maxWidth : .infinity, alignment: .leading)
                                            
                                            if item.workRole != "" {
                                                Text(item.workRole ?? "")
                                                    .font(.caption2)
                                                    .frame(maxWidth : .infinity, alignment: .leading)
                                            }
                                            
                                            if item.place != ""{
                                                Text(item.place ?? "")
                                                    .font(.caption2)
                                                    .textCase(.uppercase)
                                                    .frame(maxWidth : .infinity, alignment: .leading)
                                            }
                                            
                                        }
                                    }
                                    
                                    Button(action: {

                                        
                                    }, label: {
                                        Image(systemName:  "bookmark.fill")
                                            .foregroundColor(Color("Green Header"))
                                            .font(.title3)
                                            .padding(.trailing, 10)
                                    })
                                    
                                }
                                .padding(.top, 5)
                            }
                            
                            Text(item.comment ?? "")
                                .font(.caption)
                                .frame(maxWidth : .infinity, alignment: .leading)
                                .padding(.leading)
                                .padding(.top, (item.comment == "") ? -15 : 5)
                                .padding(.bottom, 15)
                        }
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        .padding(.horizontal)
                        .padding(.top)
                        
                    }
                }
                .padding(.leading, 5)
                .padding(.trailing, 12)
            }
            .onChange(of: bookmarkViewModel.residentData.count, perform: { value in
                
                bookmarkViewModel.fetchResidentData()
                
            })
            
            .onAppear(perform: {
                bookmarkViewModel.fetchResidentData()
            })
        }
        .frame(maxWidth : .infinity, maxHeight: .infinity)
        .background(Color("Background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct Bookmarks_Previews: PreviewProvider {
    static var previews: some View {
        Bookmarks()
            .previewLayout(.sizeThatFits)
    }
}
