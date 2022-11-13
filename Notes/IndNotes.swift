//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

let blackColor2 = Color.init(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)

import SwiftUI

struct IndNotesView: View {

    @State var text: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
    @State var inputText: String = ""
    @State var text2: String = UserDefaults.standard.string(forKey: "TEXT_KEY2") ?? ""
    @State var nameText: String = ""
    @State private var action: Int? = 0
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                        
                        NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                            EmptyView()
                        }
                            .opacity(0)
                        
                        NavigationLink(destination: AllNotesView().navigationBarBackButtonHidden(), tag: 2, selection: $action) {
                            EmptyView()
                        }
                            .opacity(0)
                        
                        Section(header: Text("Name: ")) {
                            Text(text2)
                                .foregroundColor(.white)
                                .font(.custom("Helveticanue-Thin", size: 22))
                        }
                        .font(.custom("Helveticanue-Thin", size: 25))
                        .padding()
                        .foregroundColor(primaryColor)

                        
                        Section(header: Text("Note: ")) {
                            Text(text)
                                .foregroundColor(.white)
                                .font(.custom("Helveticanue-Thin", size: 22))
                        }
                        .padding()
                        .foregroundColor(primaryColor)
                        .font(.custom("Helveticanue-Thin", size: 25))
                    }
                    .padding()
                    .background(blackColor2)
                    .frame(maxWidth: .infinity)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("Back") {
                                self.action = 2
                            }
                            .foregroundColor(primaryColor)
                        }
                    }
                    .toolbar {
                        ToolbarItem() {
                            Button("Done") {
                                self.action = 1
                            }
                            .foregroundColor(primaryColor)
                        }
                }
                
            }
            .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
            .background(.black)

        }
        
    }
}

struct IndNotesView_Previews: PreviewProvider {
    static var previews: some View {
        IndNotesView()
    }
}
