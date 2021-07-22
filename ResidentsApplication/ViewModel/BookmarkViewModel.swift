//
//  BookmarkViewModel.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 22/07/21.
//

import SwiftUI

class BookmarkViewModel: ObservableObject {
    
    @Published var residentData : [Data] = [Data]()
    
    let coreDM = CoreDataManager()
    
    
    func fetchResidentData() {
        
        residentData = coreDM.getAllData()
        
    }
    
    func addToBookmark(section : Int, wing : String, image : String, name : String, role : String, workRole : String, place : String, comment : String) {
        
        coreDM.saveResident(section: section, wing: wing, image: image, name: name, role: role, workRole: workRole, place: place, comment: comment)
        
    }
    
    func deleteData(data : Data) {
        coreDM.deleteResident(data: data)
    }
}
