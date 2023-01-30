//
//  Exemple.swift
//  NotesKinder
//
//  Created by Kin Der on 15.01.2023.
//

import SwiftUI


struct Black: View {
    @AppStorage ("dddddddddddddddddDGFGV") public var get  =  ""
    let userDefaults = UserDefaults.standard
    @State var nam: String = "\(notes[5].name)"
    @State var notem: String = "\(notes[5].note)"
    @State var showColors: Bool = false
    @State var animateButton: Bool = false
    @State var showNote: Bool = false
    @State var shouldNavigate = false
    @Environment(\.dismiss) var dismiss
    let userDefaultsGet = UserDefaults.standard
    var note = Note(name: notes[0].name, note: notes[0].note, index: 0, date: notes[0].date, cardColor: notes[0].cardColor, textcardColor: notes[0].textcardColor, titleColor: notes[0].titleColor, carColor2: notes[0].carColor2)
    
    
    

    var body: some View {
        NavigationView{
            VStack{HStack{
                Text("DEATH NOTE")
                    .font(Font.custom("DEATHNOTE-Font", size: 33))
              
                    .multilineTextAlignment (.leading)
                    .bold()
                
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(22)
                
                   
               
                    .accessibilityIdentifier(/*@START_MENU_TOKEN@*/"Identifier"/*@END_MENU_TOKEN@*/)
                
                Image(systemName: "trash")
                    .multilineTextAlignment(.trailing)
                 
                    .frame(width: 0, height: 0, alignment: .topTrailing)
                    .padding(.bottom, 32)
                    .padding()
                    .foregroundColor(.white)
                    .onTapGesture {
                        self.get = ""
                    }
            }
                
                TextField("", text: $get, axis: .vertical)
                    .frame(width: 300, alignment: .leading)
                    .foregroundColor(.white)
                    .font(Font.custom("DeathNoteFont", size: 23))
                HStack{
                    
                    Button  {
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
                            UserDefaults.standard.set(self.notem, forKey: "note")
                            self.notem = self.get
                            self.get = self.notem
                            
                            
                            
                        }
                        DispatchQueue.main.asyncAfter (deadline: .now() + 0.3) {
                            withAnimation(.spring()){
                                showNote.toggle()
                            }
                        }
                        
                    } label: {
                        Image(systemName: "pencil")
                        
                            .rotationEffect(.init(degrees: showNote ? 0 : 180))
                        
                            .font (.system(size: 12, weight: .bold))
                            .padding (5)
                            .foregroundColor (.black)
                            .background(Color.white)
                            .clipShape (Circle())
                        
                            .frame(width: 300, alignment: .trailing)
                            .padding()
                        
                    }
                }
            }
            
            .background(Color("\(notes[5].carColor2)"))
            .cornerRadius (18)
            .padding()
        }
    }
//    init() {
//        for familyName in UIFont.familyNames {
//            print (familyName)
//
//            for fontName in UIFont.fontNames (forFamilyName:
//                                                familyName) {
//                print ("-- \(fontName)")
//            }}}
}


struct Black_Previews: PreviewProvider {
    static var previews: some View {
        Black()
    }
}

