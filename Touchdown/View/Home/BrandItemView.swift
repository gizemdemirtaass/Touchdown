//
//  BrandItemView.swift
//  Touchdown
//
//  Created by gizem demirtas on 11.09.2024.
//

import SwiftUI

struct BrandItemView: View {
    // MARK: - PROPERTIES
    let brand : Brand
    
    // MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3) //Bunu kesin yazmalısın yoksa etrafındaki çizgi tam oluşmamaktadır.
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12) 
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

    // MARK: - PREVIEW
#Preview {
    BrandItemView(brand: brands[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
