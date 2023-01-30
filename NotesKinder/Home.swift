////
////  ContentView.swift
////  Notes
////
////  Created by Kin Der on 10.01.2023.
////
//
//import SwiftUI
//
//struct Home: View {
//    
//    var noel = 0
//    
//    @State var nam: String = "\(notes[0].name)"
//    
//    
//    @State var showColors: Bool = false
//    @State var animateButton: Bool = false
//    @State var showNote: Bool = false
//    @State var shouldNavigate = false
//    var body: some View {
//        
//        HStack{
//            if isMacOS() {
//                Group{
//                    SideBar()
//                    Rectangle()
//                        .fill(Color.white.opacity(0.15))
//                        .frame(width: 1)
//                    
//                }
//            }
//            
//            MainContent()
//        }
//#if os(macOS)
//        .ignoresSafeArea()
//#endif
//        .frame(width: isMacOS() ? getRect().width / 1.7 : nil, height: isMacOS() ? getRect().height - 180 : nil, alignment: .leading)
//        .background(Color.white.ignoresSafeArea())
//#if os(iOS)
//        .overlay(SideBar())
//#endif
//        .preferredColorScheme(.light)
//        
//        
//        
//    }
//    
//    @ViewBuilder
//    func MainContent()-> some View {
//        
//        VStack(spacing: 6) {
//            
//            HStack(spacing: 8) {
//                Image(systemName: "magnifyingglass")
//                    .font(.title3)
//                    .foregroundColor(.gray)
//                TextField("Поиск", text: .constant(""))
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.bottom,isMacOS() ? 0 : 10)
//            .overlay (
//                Rectangle()
//                    .fill(Color.gray.opacity (0.15))
//                    .frame (height: 1)
//                    .padding(.horizontal,-25)
//                // Moving offset 6.
//                    .offset(y: 6)
//                    .opacity(isMacOS() ? 0 : 1)
//                
//                
//                ,
//                alignment: .bottom
//            )
//            ScrollView(.vertical, showsIndicators:  false) {
//                VStack(spacing: 15) {
//                    
//               
//                    Text("Заметки")
//                        .font(isMacOS() ? .system(size: 33, weight: .bold) : .largeTitle.bold())
//                        .frame(maxWidth: .infinity, alignment: .leading)
//                 
//                    
//                    let columns = Array(repeating: GridItem(.flexible(), spacing: isMacOS() ? 25 : 15), count: isMacOS() ? 3 : 1)
//                    
//                    
//                    LazyVGrid(columns: columns, spacing: 25) {
//                        ForEach(notes) { note in
//                            CardView(note: note)
//                            
//                        }
//                        
//                    }
//                    .padding(.top,30)
//                    
//                }
//                .padding(.top,isMacOS() ? 45 : 30)
//            }
//            
//            
//            
//            
//        }
//        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
//        .padding(.top,isMacOS() ? 40 : 15)
//        .padding(.horizontal, 25)
//        
//    }
// 
//    @ViewBuilder
//    func CardView(note: Note) -> some View{
//  
//        
//        VStack{
//    
//                
//                
//                
//            
//                      
//            
//            
//            TextField("", text: $nam)
//                
//                    .font(isMacOS() ? .title : .body)
//                    .multilineTextAlignment (.leading)
//                    .bold()
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .foregroundColor(.white)
//            .background(note.cardColor)
//            .padding(22)
//            
//            
//                Text (note.note)
//                
//                    .font(isMacOS() ? .title2 : .body)
//                    .multilineTextAlignment (.leading)
//                    .frame(width: 300, alignment: .leading)
//                
//                
//                    .lineLimit(10)
//                    .foregroundColor(note.textcardColor)
//                
//                HStack{
//                    Text (note.date,style: .date)
//                        .padding()
//                        .foregroundColor(Color.white)
//                        .opacity (0.8)
//                    Spacer (minLength: 0)
//                    // Edit Button..
//                    
//                    Button  {
//                        
//                        
//                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
//                            
//                            
//                        }
//                        
//                        
//                        DispatchQueue.main.asyncAfter (deadline: .now() + 0.3) {
//                            withAnimation(.spring()){
//                                showNote.toggle()
//                            }
//                        }
//                        
//                    } label: {
//                        Image (systemName: "pencil")
//                        
//                            .rotationEffect(.init(degrees: showNote ? 0 : 180))
//                        
//                            .font (.system(size: 12, weight: .bold))
//                            .padding (5)
//                            .foregroundColor (.white)
//                            .background(Color.black)
//                            .clipShape (Circle())
//                            .offset(x: -12, y: -10)
//                    }
//                }
//            
//                
//                .padding(.top, 1)
//                .lineLimit(showNote ? 10 : 1)
//                
//            }
//        
//        .background(note.cardColor)
//        
//        .cornerRadius (18)
//        
//    }
//    
//        @ViewBuilder
//    func SideBar() -> some View{
//        
//        VStack{
//            if isMacOS(){
//                Text("Pocket")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//            }
//            if isMacOS() {
//                AddButton()
//                    .zIndex(1)
//            }
//            
//            VStack(spacing: 15) {
//                let colors = [Color.pink, Color.orange, Color.purple, Color.blue, Color.green]
//                ForEach(colors,id: \.self){color in
//                    Circle()
//                        .fill(color)
//                        .frame(width: isMacOS() ? 20 : 25, height: isMacOS() ? 20 : 25)
//                }
//            }
//            
//            .padding (.top, 20)
//            .frame(height: showColors ? nil : 0) .opacity (showColors ? 1 : 0)
//            .zIndex(0)
//            if !isMacOS(){
//                AddButton ()
//                    .zIndex (1)
//            }}
//
//                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
//                    .padding()
//                    .background(BlurView(style: .systemUltraThinMaterialDark)
//                        .opacity(showColors ? 1 : 0)
//                        .ignoresSafeArea())
//                
//          }
//    
//    
//    
//    @ViewBuilder
//    func AddButton()-> some View{
//        Button {
//            
//            
//      
//            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)) {
//                showColors.toggle()
//                animateButton.toggle()
//                  
//            }
//         
//            
//            
//            DispatchQueue.main.asyncAfter (deadline: .now() + 0.3) {
//                
//                withAnimation(.spring()){
//                    animateButton.toggle()
//                }
//            }
//            
//        } label: {
//            Image(systemName: "plus")
//                .font(.title)
//                .foregroundColor(.white)
//                .scaleEffect(animateButton ? 1.1 : 1)
//            
//                .padding(isMacOS() ? 12 : 15)
//                .background(Color.black)
//                .clipShape(Circle())
//                .overlay(NavigationLink(
//                               destination: AddNoteViewQ(),
//                               isActive: $shouldNavigate) {}
//                               .hidden())
//        }
//        .rotationEffect(.init(degrees: showColors ? 45 : 0))
//        .scaleEffect(animateButton ? 1.1 : 1)
//        .padding(.top,30)
//    }
//        
//        
//        
//    }
//
//  
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Home(showColors: false)
//    }
//}
//
//    
//    extension View{
//        
//            func getRect ( ) ->CGRect{
//                #if os (iOS)
//                return UIScreen.main.bounds
//                #else
//                return   NSScreen.main!.visibleFrame
//                #endif
//        }
//            func isMacOS ()->Bool{
//                #if os (iOS)
//                return false
//                #endif
//                return true
//                
//            }
//        
//    }
//// Hiding Focus Ring...
//#if os (macOS)
//extension NSTextField{
//    open override var focusingType: NSFocusRingType {
//        get {.none}
//        set{}
//    }
//}
//#endif
