//
//  ContentView.swift
//  Moonshot
//
//  Created by Matthew Dolan on 2023-03-03.
//

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ContentView: View {
    var body: some View {
        // You can make the scrolls horizontal or vertical.
        ScrollView(.horizontal) {
            // Lazy Stacks take up all the available space with width and height. Regular stacks take up the available content space.
            LazyHStack(spacing: 10) {
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
