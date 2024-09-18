//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by gizem demirtas on 11.09.2024.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack (alignment: .center, spacing: 6, content: {
           // PRICE
            VStack (alignment: .leading , spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading) //Çapa Liderliği - YAZI BOYUTUNU ARTIRDIK!
            })
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
           // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }) //:HSTACK
        .onAppear( perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
        
    }
}

    // MARK: - PREVIEW

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.gray)
    
}
