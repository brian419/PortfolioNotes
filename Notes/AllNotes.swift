//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

let blackColor2 = Color.init(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)

import SwiftUI

struct AllNotesView: View {
    
    @State private var action: Int? = 0
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(), tag: 1, selection: $action) {
                    EmptyView()
                }
                    .opacity(0)
                
                Text("All notes")
                    .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                    .foregroundColor(Color.white)
                    .toolbar {
                        ToolbarItem() {
                            Button("Done") {
                                self.action = 1
                            }
                        }
                    }
                
            }
            .padding()
        .background(blackColor2)
        }
    }
}

struct AllNotesView_Previews: PreviewProvider {
    static var previews: some View {
        AllNotesView()
    }
}
