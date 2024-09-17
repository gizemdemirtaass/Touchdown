//
//  AddToCardDetailView.swift
//  Touchdown
//
//  Created by gizem demirtas on 17.09.2024.
//

import SwiftUI

struct AddToCardDetailView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        Button (action: {}, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
                
                
        }) //: BUTTON
        .padding(15)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
        
    }
}

    // MARK: - PREVIEW
#Preview {
    AddToCardDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
}
