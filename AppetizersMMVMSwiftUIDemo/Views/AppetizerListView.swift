//
//  ContentView.swift
//  AppetizersMMVMSwiftUIDemo
//
//  Created by Marco Alonso Rodriguez on 05/06/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers, id: \.id) { appetizer in
                    NavigationLink {
                        AppetizerDetailView(appetizer: appetizer)
                    } label: {
                        AppetizerCell(appetizer: appetizer)
                    }
                }.listStyle(.plain)
                .navigationTitle("🍟 Appetizers")
            }
            .onAppear { viewModel.getAppetizers() }
            
            if viewModel.isLoading { LoadingView() }
        }
        
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
