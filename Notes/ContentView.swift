//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

import SwiftUI

let primaryColor = Color.init(red: 255/255, green: 196/255, blue: 0/255, opacity: 1.0)


struct ContentView: View {
    
    @State private var action: Int? = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("IOS Notes")
                    .font(Font.custom("HelveticaNue-Thin", size: 50))
                    .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                    .padding()
                    .foregroundColor(primaryColor)

                NavigationLink(destination: NotesView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    
                    .opacity(0)
                NavigationLink(destination: AllNotesView().navigationBarBackButtonHidden(), tag: 2, selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                
                Button(action: {
                    self.action = 2
                }, label: {
                    
                
                Text("   All Notes  ")
                    .padding()
                    .foregroundColor(Color.white)
                })
                    //.background(Color.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(primaryColor, lineWidth: 5)
                    )
                    .buttonStyle(PlainButtonStyle())
                    .font(Font.custom("HelveticaNue-Thin", size: 25))
                    .padding()
                
                
                Button(action: {
                    self.action = 1
                }, label: {
                    Text("Enter Notes")
                    .padding()
                    .foregroundColor(Color.white)

                    //Image(systemName: "plus")
                        //.foregroundColor(Color.white)
                        //.font(Font.custom("HelveticaNue-thin", size: 20))
                })
                    //.background(primaryColor)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(primaryColor, lineWidth: 5)
                    )
                    .buttonStyle(PlainButtonStyle())
                    .font(Font.custom("HelveticaNue-Thin", size: 25))
                    .padding()
                    
                
                Text("")
                    .font(Font.custom("HelveticaNue-Thin", size: 50))
                    .frame(idealWidth: 50, maxWidth: 100, idealHeight: 50, maxHeight: 100, alignment: .center)
                
            }
            
            .padding()
            .background(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
