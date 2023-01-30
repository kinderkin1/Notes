//
//  ContentView.swift
//  NotesKinder
//
//  Created by Kin Der on 12.01.2023.
//

import SwiftUI
import CoreData
struct ContentView2: View {
   
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var food: FetchedResults<Food> 
var body: some View {
    Main(get: .constant(""), showColors: false)
    
        .buttonStyle(BorderlessButtonStyle())
        .textFieldStyle(PlainTextFieldStyle())
}
}


struct ContentView2_Previews: PreviewProvider{
    static var previews: some View {
        ContentView2()
    }
}
