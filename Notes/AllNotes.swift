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
                        
                        ForEach(1..<10, id: \.self) { i in
                            Button("Note \(i)") {
                                self.action = 1
                            }
                            .padding()
                            .foregroundColor(.white)
                            .buttonStyle(MyButtonStyle())
                            .font(.custom("Helveticanue-Thin", size: 20))

                        }
                        ForEach(10..<11, id: \.self) { i in
                            Button("Note \(i)") {
                                self.action = 1
                            }
                            .padding()
                            .foregroundColor(.white)
                            .buttonStyle(MyButtonStyle())
                            .font(.custom("Helveticanue-Thin", size: 20))

                        }
 
                    }
                        .padding()
                        .foregroundColor(primaryColor)
                        .font(.custom("Helveticanue-Thin", size: 22))
                }
                .frame(maxWidth: .infinity)
                
            }
            .padding()
            .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
            .background(.black)
            .toolbar {
                ToolbarItem() {
                    Button("Cancel") {
                        self.action = 2
                    }
                    .foregroundColor(primaryColor)
                }
            }
        }
        
        
    }
}

struct MyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        
        
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(configuration.isPressed ? primaryColor : Color.clear)
            .cornerRadius(8.0)
    }
}

struct AllNotesView_Previews: PreviewProvider {
    static var previews: some View {
        AllNotesView()
    }
}
