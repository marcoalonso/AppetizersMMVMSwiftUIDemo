//
//  AppetizerDetailView.swift
//  AppetizersMMVMSwiftUIDemo
//
//  Created by Marco Alonso Rodriguez on 18/06/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @State var appetizer: AppetizerModel
    
    var body: some View {
        VStack(spacing: 20.0) {
            
            Spacer()
            
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 300)
                .cornerRadius(15)
            
            Text(appetizer.name)
                .font(.title)
                .foregroundColor(.white)
                .bold()
            
            Text(appetizer.description)
                .font(.title2)
            HStack {
                Text("Calories: \(appetizer.calories)")
                
                
                Text("Carbs: \(appetizer.carbs)")
                
                
                Text("Protein: \(appetizer.protein)")
                
            }
            
            Text("Price: $\(String(format: "%.1f", appetizer.price))")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.purple)
                .cornerRadius(12)
            
                .font(.title3)
            
            Spacer()
            
        }
        .padding(.top, 70)
        .padding(.leading, 20)
        .padding(.trailing, 20)
        .shadow(radius: 12)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.white, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        ).edgesIgnoringSafeArea(.all)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
    }
}
