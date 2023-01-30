//
//  Exemple.swift
//  NotesKinder
//
//  Created by Kin Der on 15.01.2023.
//

import SwiftUI


struct Purple: View {
    @AppStorage ("dddd") public var get  =  ""
    let userDefaults = UserDefaults.standard
    @State var nam: String = "\(notes[2].name)"
    @State var notem: String = "\(notes[2].note)"
    @State var showColors: Bool = false
    @State var animateButton: Bool = false
    @State var showNote: Bool = false
    @State var shouldNavigate = false
 
    let userDefaultsGet = UserDefaults.standard
    var note = Note(name: notes[0].name, note: notes[0].note, index: 0, date: notes[0].date, cardColor: notes[0].cardColor, textcardColor: notes[0].textcardColor, titleColor: notes[0].titleColor, carColor2: notes[0].carColor2)
    
    
    

    var body: some View {
        NavigationView{
            VStack{HStack{
                TextField("", text: $nam)
                    .multilineTextAlignment (.leading)
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(22)
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
                    .foregroundColor(.yellow)
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
                            .foregroundColor (.white)
                            .background(Color.black)
                            .clipShape (Circle())
                        
                            .frame(width: 300, alignment: .trailing)
                            .padding()
                        
                        
                    }
                }
            }
            
            .background(Color("\(notes[2].carColor2)"))
            .cornerRadius (18)
            .padding()
        }
    }
}

struct Purple_Previews: PreviewProvider {
    static var previews: some View {
        Purple()
    }
}
