//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

let blackColor = Color.init(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)
let primaryColor2 = Color.init(red: 255/255, green: 196/255, blue: 0/255, opacity: 1.0)


import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}


struct NotesView: View {
    
    @State var sentences: String = ""
    @State private var action: Int? = 0
    

    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                
                Text("Type your note below")
                    .font(.custom("Helveticanue-Thin", size: 25))
                    .foregroundColor(primaryColor2)
                    

                TextField("Type your text here . . .", text: $sentences, axis: .vertical)
                    .padding()
                    .background(.black)
                    .foregroundColor(primaryColor2)
                    .border(.white)
                    .font(.custom("Helveticanue-Thin", size: 20))
                    .toolbar {
                        ToolbarItem() {
                            Button("Save") {
                                self.action = 1
                                //should be where we save data later
                            }
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("Cancel") {
                                self.action = 1
                            }
                        }
                    }
                
            }
            .padding()
            .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
            .background(.black)
            
            
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
