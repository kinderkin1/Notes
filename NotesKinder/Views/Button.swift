////
////  Button.swift
////  NotesKinder
////
////  Created by Kin Der on 15.01.2023.
////
//
//import SwiftUI
//
//struct Button2: View {
//    @Binding var get :String
//    @State var showColors: Bool = false
//    @State var animateButton: Bool = false
//    @State var showNote: Bool = false
//    @State var shouldNavigate = false
//    @State private var showingSheet = false
//    @State private var showingSheet1 = false
//    @State private var showingSheet2 = false
//    @State private var showingSheet3 = false
//    @State private var showingSheet4 = false
//    var body: some View {
//        
//        
//       
//            VStack(spacing: 55) {
//                
////                let colors = [Color.pink, Color.green, Color.purple, Color.orange, Color.blue]
////                ForEach(colors,id: \.self)
////                {color in
//                
//                    Circle()
//                    .fill(Color.pink)
//                        .frame(width:  25 , height:  25)
//                        .offset(x: 150, y: 80)
//                   
//                    
//                   
//                        .zIndex(0)
//                        .sheet(isPresented: $showingSheet) {
//                            Exemple()
//                        }
//                        .onTapGesture {
//                            showNote.toggle()
//                            showColors.toggle()
//                            showingSheet.toggle()
//                        }
//                Circle()
//                .fill(Color.green)
//                    .frame(width:  25 , height:  25)
//                    .offset(x: 150, y: 80)
//               
//                
//               
//                    .zIndex(0)
//                    .sheet(isPresented: $showingSheet1) {
//                        Green()
//                    }
//                    .onTapGesture {
//                        showNote.toggle()
//                        showColors.toggle()
//                        showingSheet1.toggle()
//                    }
//                Circle()
//                .fill(Color.purple)
//                    .frame(width:  25 , height:  25)
//                    .offset(x: 150, y: 80)
//               
//                
//               
//                    .zIndex(0)
//                    .sheet(isPresented: $showingSheet2) {
//                        Purple()
//                    }
//                    .onTapGesture {
//                        showNote.toggle()
//                        showColors.toggle()
//                        showingSheet2.toggle()
//                    }
//                Circle()
//                .fill(Color.orange)
//                    .frame(width:  25 , height:  25)
//                    .offset(x: 150, y: 80)
//               
//                
//               
//                    .zIndex(0)
//                    .sheet(isPresented: $showingSheet3) {
//                        Orange()
//                    }
//                    .onTapGesture {
//                        showNote.toggle()
//                        showColors.toggle()
//                        showingSheet3.toggle()
//                    }
//                Circle()
//                .fill(Color.blue)
//                    .frame(width:  25 , height:  25)
//                    .offset(x: 150, y: 80)
//               
//                
//               
//                    .zIndex(0)
//                    .sheet(isPresented: $showingSheet4) {
//                        Blue()
//                    }
//                    .onTapGesture {
//                        showNote.toggle()
//                        showColors.toggle()
//                        showingSheet4.toggle()
//                    }
//                
//                 
//                }
//        
//              
//                
//                .padding (.top, 20)
//                .frame(height: showColors ? nil : 0) .opacity (showColors ? 1 : 0)
//             
//                
//                
//                .padding()
//            
//            
//            Button {
//                
//                
//                
//                withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
//                    showColors.toggle()
//                    animateButton.toggle()
//                    showNote.toggle()
//   
//                }
//                DispatchQueue.main.asyncAfter (deadline: .now() + 0.3) {
//                    withAnimation(.spring()){
//                        
//                    }
//                }
//                
//                
//                
//               
//                
//            } label: {
//                Image(systemName: "plus")
//                    .font(.title)
//                    .padding()
//                    .rotationEffect(.init(degrees: showNote ? 45 : 0))
//                    .foregroundColor(.white)
//                    .scaleEffect(animateButton ? 1.1 : 1)
//                
//                
//                    .background(showNote ? Color.red : Color.black)
//                    .clipShape(Circle())
//                
//                
//                
//            }
//          
//     
//            .offset(x: 150, y: 330)
//            
//            
//            
//        }
//        
//        
//    }
//
//struct Button_Previews: PreviewProvider {
//    static var previews: some View {
//        Button2(get: .constant(""), showColors: false)
//    }
//}
