//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

import SwiftUI

struct AllNotesView: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    NavigationLink(destination: IndNotesView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                        EmptyView()
                    }
                        .opacity(0)
                    
                    NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 2, selection: $action) {
                        EmptyView()
                    }
                        .opacity(0)
                    
                    Section(header: Text("Notes List")) {
                        Button("Note 1") {
                            self.action = 1
                        }
                            .padding()
                            .foregroundColor(primaryColor)
                        
                        Button("Note 2") {
                            self.action = 1
                        }
                            .padding()
                            .foregroundColor(primaryColor)
                        
                        Button("Note 3") {
                            self.action = 1
                        }
                            .padding()
                            .foregroundColor(primaryColor)
                        
                        Button("Note 4") {
                            self.action = 1
                        }
                            .padding()
                            .foregroundColor(primaryColor)
                        
                        Button("Note 5") {
                            self.action = 1
                        }
                            .padding()
                            .foregroundColor(primaryColor)
                        Button("Note 6") {
                            self.action = 1
                        }
                            .padding()
                            .foregroundColor(primaryColor)
                        
                        
                    }
                        .foregroundColor(.white)
                }
            }
            .padding()
            .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
            .background(.black)
            .toolbar {
                ToolbarItem() {
                    Button("Cancel") {
                        self.action = 2
                    }
                }
            }
        }
        
        
    }
}
    

struct AllNotesView_Previews: PreviewProvider {
    static var previews: some View {
        AllNotesView()
    }
}
