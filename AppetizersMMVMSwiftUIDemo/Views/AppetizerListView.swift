//
//  ContentView.swift
//  AppetizersMMVMSwiftUIDemo
//
//  Created by Marco Alonso Rodriguez on 05/06/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
