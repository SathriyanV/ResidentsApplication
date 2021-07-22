//
//  CoreDataManager.swift
//  ResidentsApplication
//
//  Created by Sathriyan on 22/07/21.
//

import Foundation
import CoreData

class CoreDataManager {

    let  persistentContainer : NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "ResidentBookmarkDataModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("core data failed \(error.localizedDescription)")
            }
        }
    }
    
    func getAllData() -> [Data] {
        
        let fetchRequest : NSFetchRequest<Data> = Data.fetchRequest()
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        }catch {
            return []
        }
    }
    
    func saveResident(section : Int, wing : String, image : String, name : String, role : String, workRole : String, place : String, comment : String) {
        
        let data = Data(context: persistentContainer.viewContext)
        data.section = Int64(section)
        data.wing = wing
        data.image = image
        data.name = name
        data.role = role
        data.workRole = workRole
        data.place = place
        data.comment = comment
        
        do {
            try persistentContainer.viewContext.save()
        }catch {
            print("Failed to save News \(error.localizedDescription)")
        }
    }
    
    
    func deleteResident(data : Data) {
        
        persistentContainer.viewContext.delete(data)
        do {
            try persistentContainer.viewContext.save()
        }catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save data after delete \(error.localizedDescription)")
        }
    }
    
}
