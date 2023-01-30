//
//  Main.swift
//  NotesKinder
//
//  Created by Kin Der on 15.01.2023.
//

import SwiftUI

struct Main: View{
  // @ObservableObject var exemple = Exemple2()
    @Binding var get : String
    @State private var showAlert = false
    @State var showColors: Bool = false
    @State var animateButton: Bool = false
    @State var showNote: Bool = false
    @State  var showingSheet = false
    @State  var showingSheet1 = false
    @State  var showingSheet2 = false
    @State  var showingSheet3 = false
    @State  var showingSheet4 = false
    @State  var showingSheet5 = false
    @State var refresh: Bool = false
    var body: some View {
        let exem = Exemple()
        let purple = Purple()
        let blue = Blue()
        let black = Black()
        let orange = Orange()
        let green = Green()
        
        ZStack{
      
 
            
                
                
            ScrollView{ VStack{
                
                
//                HStack(spacing: 8) {
//
//                    Image(systemName: "magnifyingglass")
//
//                        .font(.custom("ff", fixedSize: 20))
//                        .foregroundColor(.gray)
//
//                    TextField("Поиск", text: .constant(""))
//                        .onTapGesture {
//                            showAlert = true
//                        }
//                        .alert(isPresented: $showAlert) {
//                            Alert(title: Text(""), message: Text("Поиск себя - это просто добавить заметку... Ты согласен?"), dismissButton: .default(Text("Да")))
//                        }
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//
//                .overlay (
//                    Rectangle()
//                        .fill(Color.gray.opacity (0.15))
//                        .frame (height: 1)
//                        .padding(.horizontal,-25)
//
//                        .offset(y: 6)
//
//
//
//                    ,
//                    alignment: .bottom
                //)
                Text("K.I.N.D.E.R.")
                    .font(.custom("", fixedSize: 40))
                    .padding(.top,30)
                    .padding(35)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ZStack{
                
                    VStack{
                       
                        Text(notes[0].name)
                            .multilineTextAlignment (.leading)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, alignment: .leading)
                        Text(exem.get)
                            .frame(width: 300, alignment: .leading)
                            .foregroundColor(.yellow)
                         
                       
                        HStack{
                            Spacer()
                            Button {
                                
                                
                        
                                withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                          
                                    animateButton.toggle()
                                    
                                    showingSheet.toggle()
                                }
                                
                                
                                
                                DispatchQueue.main.asyncAfter (deadline: .now() + 0.1) {
                                    
                                    withAnimation(.spring()){
                                        animateButton.toggle()
                                    }
                                }
                                
                            } label: {
                                Image(systemName: "pencil")
                                    .padding()
                                
                                
                                    .foregroundColor(.white)
                                    .scaleEffect(animateButton ? 1.1 : 1)
                                
                                
                                    .background(Color.black)
                                    .clipShape(Circle())
                                
                                    .padding()
                                
                            }
                            .sheet(isPresented: $showingSheet) {
                                Exemple()
                            }
                            
                            
                            
                        }}
                    
                    
                    
                    
                    
                }
                
                
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("\(notes[0].carColor2)"))
                .cornerRadius(18)
            
                
                
                
                
                
                VStack{
                  
                    Text(notes[1].name)
                        .multilineTextAlignment (.leading)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, alignment: .leading)
                    
                    Text(green.get)
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.yellow)
                    
                    
                    
                    HStack {
                        Spacer()
                        Button {
                            
                            
                            
                            withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                               
                                
                                animateButton.toggle()
                                
                                showingSheet1.toggle()
                            }
                            
                            
                            
                            DispatchQueue.main.asyncAfter (deadline: .now() + 0.1) {
                                
                                withAnimation(.spring()){
                                    animateButton.toggle()
                                }
                            }
                            
                        } label: {
                            Image(systemName: "pencil")
                                .padding()
                            
                            
                                .foregroundColor(.white)
                                .scaleEffect(animateButton ? 1.1 : 1)
                            
                            
                                .background(Color.black)
                                .clipShape(Circle())
                            
                                .padding()
                            
                        }
                        .sheet(isPresented: $showingSheet1) {
                            Green()
                        }}
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("\(notes[1].carColor2)"))
                .cornerRadius(18)
                
                VStack{
                  
                    Text(notes[2].name)
                        .multilineTextAlignment (.leading)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, alignment: .leading)
                    
                    Text(purple.get)
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.yellow)
                   
                    
                    HStack{
                        Spacer()
                    
                    
                    Button {
                        
                        
                        
                        withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                         
                            animateButton.toggle()
                            
                            showingSheet2.toggle()
                        }
                        
                        
                        
                        DispatchQueue.main.asyncAfter (deadline: .now() + 0.1) {
                            
                            withAnimation(.spring()){
                                animateButton.toggle()
                            }
                        }
                        
                    } label: {
                        Image(systemName: "pencil")
                            .padding()
                        
                        
                            .foregroundColor(.white)
                            .scaleEffect(animateButton ? 1.1 : 1)
                        
                        
                            .background(Color.black)
                            .clipShape(Circle())
                        
                            .padding()
                        
                    }}
                    .sheet(isPresented: $showingSheet2) {
                        Purple()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("\(notes[2].carColor2)"))
                .cornerRadius(18)
             
            
                    
                }
  
                    VStack{
                       
                        Text(notes[3].name)
                            .multilineTextAlignment (.leading)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, alignment: .leading)
                        
                        Text(orange.get)
                            .frame(width: 300, alignment: .leading)
                            .foregroundColor(.yellow)
                        
                        
                        HStack{
                            Spacer()
                            
                            Button {
                                
                                
                                
                                withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                             
                                    animateButton.toggle()
                                    
                                    showingSheet3.toggle()
                                }
                                
                                
                                
                                DispatchQueue.main.asyncAfter (deadline: .now() + 0.1) {
                                    
                                    withAnimation(.spring()){
                                        animateButton.toggle()
                                    }
                                }
                                
                            } label: {
                                Image(systemName: "pencil")
                                    .padding()
                                
                                
                                    .foregroundColor(.white)
                                    .scaleEffect(animateButton ? 1.1 : 1)
                                
                                
                                    .background(Color.black)
                                    .clipShape(Circle())
                                
                                    .padding()
                                
                            }
                            .sheet(isPresented: $showingSheet3) {
                                Orange()
                            }}
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color("\(notes[3].carColor2)"))
                    .cornerRadius(18)
               
                    
                    VStack{
                       
                        Text(notes[4].name)
                            .multilineTextAlignment (.leading)
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, alignment: .leading)
                        
                        Text(blue.get)
                            .frame(width: 300, alignment: .leading)
                            .foregroundColor(.yellow)
                      
                        HStack{
                            Spacer()
                            Button {
                            
                            
                            
                            withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                         
                                animateButton.toggle()
                                
                                showingSheet4.toggle()
                            }
                            
                            
                            
                            DispatchQueue.main.asyncAfter (deadline: .now() + 0.1) {
                                
                                withAnimation(.spring()){
                                    animateButton.toggle()
                                }
                            }
                            
                            } label: {
                                Image(systemName: "pencil")
                                    .padding()
                                
                                
                                    .foregroundColor(.white)
                                    .scaleEffect(animateButton ? 1.1 : 1)
                                
                                
                                    .background(Color.black)
                                    .clipShape(Circle())
                                    .padding()
                                
                            }
                        }
                        .sheet(isPresented: $showingSheet4) {
                            Blue()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color("\(notes[4].carColor2)"))
                    .cornerRadius(18)
                   
                    
                VStack{
                  
                    Text(notes[5].name)
                        .font(Font.custom("DEATHNOTE-Font", size: 33))
                        .multilineTextAlignment (.leading)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, alignment: .leading)
                    
                    Text(black.get)
                        .frame(width: 300, alignment: .leading)
                        .foregroundColor(.white)
                        .font(Font.custom("DEATHNOTE-Font", size: 23))
                    HStack{
                        Spacer()
                        Button {
                        
                        
                        
                        withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                     
                            animateButton.toggle()
                            
                            showingSheet5.toggle()
                        }
                        
                        
                        
                        DispatchQueue.main.asyncAfter (deadline: .now() + 0.1) {
                            
                            withAnimation(.spring()){
                                animateButton.toggle()
                            }
                        }
                        
                        } label: {
                            Image(systemName: "pencil")
                                .padding()
                            
                            
                                .foregroundColor(.black)
                                .scaleEffect(animateButton ? 1.1 : 1)
                            
                            
                                .background(Color.white)
                                .clipShape(Circle())
                                .padding()
                            
                        }
                    }
                    .sheet(isPresented: $showingSheet5) {
                        Black()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color("\(notes[5].carColor2)"))
                .cornerRadius(18)
      
                
                    
                    
                }
            .refreshable {
    
            
            }
            VStack(spacing: 55) {
                
    //                let colors = [Color.pink, Color.green, Color.purple, Color.orange, Color.blue]
    //                ForEach(colors,id: \.self)
    //                {color in
                
                    Circle()
                    .fill(Color.pink)
                        .frame(width:  25 , height:  25)
                        .offset(x: 150, y: 20)
                   
                    
                   
                        .zIndex(0)
                        .sheet(isPresented: $showingSheet) {
                            Exemple()
                        }
                        .onTapGesture {
                            showNote.toggle()
                            showColors.toggle()
                            showingSheet.toggle()
                        }
                Circle()
                .fill(Color.green)
                    .frame(width:  25 , height:  25)
                    .offset(x: 150, y: 20)
               
                
               
                    .zIndex(0)
                    .sheet(isPresented: $showingSheet1) {
                        Green()
                    }
                    .onTapGesture {
                        showNote.toggle()
                        showColors.toggle()
                        showingSheet1.toggle()
                    }
                Circle()
                .fill(Color.purple)
                    .frame(width:  25 , height:  25)
                    .offset(x: 150, y: 20)
               
                
               
                    .zIndex(0)
                    .sheet(isPresented: $showingSheet2) {
                        Purple()
                    }
                    .onTapGesture {
                        showNote.toggle()
                        showColors.toggle()
                        showingSheet2.toggle()
                    }
                Circle()
                .fill(Color.orange)
                    .frame(width:  25 , height:  25)
                    .offset(x: 150, y: 20)
               
                
               
                    .zIndex(0)
                    .sheet(isPresented: $showingSheet3) {
                        Orange()
                    }
                    .onTapGesture {
                        showNote.toggle()
                        showColors.toggle()
                        showingSheet3.toggle()
                    }
                Circle()
                .fill(Color.blue)
                    .frame(width:  25 , height:  25)
                    .offset(x: 150, y: 20)
               
                
               
                    .zIndex(0)
                    .sheet(isPresented: $showingSheet4) {
                        Blue()
                    }
                    .onTapGesture {
                        showNote.toggle()
                        showColors.toggle()
                        showingSheet4.toggle()
                    }
                
                Circle()
                .fill(Color.black)
                    .frame(width:  25 , height:  25)
                    .offset(x: 150, y: 20)
               
              
               
                    .zIndex(0)
                    .sheet(isPresented: $showingSheet5) {
                        Black()
                    }
                    .onTapGesture {
                        showNote.toggle()
                        showColors.toggle()
                        showingSheet5.toggle()
                        
                    }
                
                
                }
          
         
        
              
                
                .padding (.top, 20)
                .frame(height: showColors ? nil : 0) .opacity (showColors ? 1 : 0)
             
                
                
                .padding()
            
            
            Button {
                
                
                
                withAnimation(.interactiveSpring(response: 0.5144, dampingFraction: 0.43, blendDuration: 0.3)) {
                    showColors.toggle()
                    animateButton.toggle()
                    showNote.toggle()

                }
                DispatchQueue.main.asyncAfter (deadline: .now() + 0.3) {
                    withAnimation(.spring()){
                        
                    }
                }
                
                
                
               
                
            } label: {
                Image(systemName: "plus")
                    .font(.title)
                    .padding()
                    .rotationEffect(.init(degrees: showNote ? 45 : 0))
                    .foregroundColor(.white)
                    .scaleEffect(animateButton ? 1.1 : 1)
                
                
                    .background(showNote ? Color.red : Color.black)
                    .clipShape(Circle())
                
                
                
            }
          
     
            .offset(x: 150, y: 330)
            }
       
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        .padding()
        .background(BlurView(style: .dark)
            .opacity(showColors ? 1 : 0)
            .ignoresSafeArea())
            
        }
    
    
    
}
       
    


struct Main_Previews: PreviewProvider {
static var previews: some View {
    Main( get: .constant(""), showColors: false)
}
}



