//
//  ContentView.swift
//  Notes
//
//  Created by Brian Son on 11/7/22.
//

let blackColor = Color.init(red: 0/255, green: 0/255, blue: 0/255, opacity: 1.0)

import SwiftUI

struct NotesView: View {
    var body: some View {
        VStack {
            Text("Type your note . . .")
                .frame(idealWidth: 100, maxWidth: .infinity, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                .foregroundColor(Color.white)
        }
        .padding()
        .background(blackColor)
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        NotesView()
    }
}
