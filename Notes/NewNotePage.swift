//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

let blackColor = Color.init(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct NewNoteView: View {
    @State var text: [String] = UserDefaults.standard.stringArray(forKey: "TEXT_KEY") ?? [""]
    @State var inputText: String = ""
    @State var text2: [String] = UserDefaults.standard.stringArray(forKey: "TEXT_KEY2") ?? [""]
    @State var nameText: String = ""
    @State private var action: Int? = 0
    
    @State var count: Int = 0

    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                .opacity(0)
                
                Section(header: Text("Name:")) {
                    TextField("Type", text: $nameText, axis: .vertical)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .border(.white)
                        .font(.custom("Helveticanue-Thin", size: 25))
                        .border(.white)
                    //change .border(.black) later
                }
                .padding()
                .foregroundColor(primaryColor)
                .font(.custom("Helveticanue-Thin", size: 25))
                
                Section(header: Text("Type your note below:")) {
                    TextField("Type", text: $inputText, axis: .vertical)
                        .padding()
                        .background(.black)
                        .foregroundColor(.white)
                        .border(.white)
                        .font(.custom("Helveticanue-Thin", size: 25))
                }
                .padding()
                .foregroundColor(primaryColor)
                .font(.custom("Helveticanue-Thin", size: 25))
                
                
            }
            .padding()
            .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
            .background(.black)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        self.action = 1
                    }
                    .foregroundColor(primaryColor)
                }
            }
            .toolbar {
                ToolbarItem() {
                    Button("Save") {
                        //                        count += 1
                        //                        if count >= 2 {
                        //                            UserDefaults.resetStandardUserDefaults()
                        //                        }
                        self.action = 1
                        UserDefaults.standard.set(inputText, forKey: "TEXT_KEY")
                        text.append(inputText)
                    
                        print(inputText)
                        
                        UserDefaults.standard.set(nameText, forKey: "TEXT_KEY2")
                        text2.append(nameText)
                        print(nameText)
                    }
                    .foregroundColor(primaryColor)
                }
            }
            
        }
    }
}

//ForEach(1..<10) { i in
//  text[i] = inputText
//}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NewNoteView()
    }
}
