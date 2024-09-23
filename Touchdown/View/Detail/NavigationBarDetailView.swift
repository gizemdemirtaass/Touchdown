//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by gizem demirtas on 11.09.2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack {
            
            Button(action: {
                    withAnimation(.easeOut){
                        feedback.impactOccurred()
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                        
                    }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: BUTTON
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }) //:BUTTON
        } //:HSTACK
    }
}

    // MARK: - PREVIEW
#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
    
    
}
