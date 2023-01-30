//
//  AddNoteView.swift
//  NotesKinder
//
//  Created by Kin Der on 12.01.2023.
//

import SwiftUI
//

import Foundation
import CoreData




class DataController: ObservableObject{

    
    

    let container = NSPersistentContainer(name: "FoodModel")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Failed to load data in DataController \(error.localizedDescription)")
            }
        }
    }
    
    
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved successfully. WUHU!!!")
        } catch {
            // Handle errors in our database
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }
    }
    
    
    func addFood(name: String, note: String, date: Date, context: NSManagedObjectContext) {
        
        let note1 = Food(context: context)
        
        
        note1.id = UUID()
        note1.note = note
        note1.name = name
       
  
        
        save(context: context)
    }
    
    
    
}
            
      
            
      
