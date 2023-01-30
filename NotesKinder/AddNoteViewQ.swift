//
//  AddNoteViewQ.swift
//  NotesKinder
//
//  Created by Kin Der on 12.01.2023.
//

import SwiftUI


struct AddNoteViewQ: View {
    
    @State private var name : String = ""
    @State private var note : String = ""
    
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack {
            TextField("dcdcdc", text: $name)
            TextField("cdcdcecec", text:  $note)
            
            
            Button("Submit") {
                
                DataController().addFood(
                    name: name,
                    note: note, date: .now,
                    context: managedObjContext)
                dismiss()
            }
        }
        
    }
    }


struct AddNoteViewQ_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteViewQ()
    }
}
