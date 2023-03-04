//
//  ContentView.swift
//  Moonshot
//
//  Created by Matthew Dolan on 2023-03-03.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    var body: some View {
        // For horizontal grid use a scroll view that is horizontal. Have a lazy H grid and instead of columns use rows. 
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<1000) {
                    Text("Item \($0)")
                }
            }
        }
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
