//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by gizem demirtas on 11.09.2024.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .leading, spacing: 5, content: {
            
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,
                         UIApplication.shared.windows.first?.safeAreaInsets.top) //IPHONE NUN YUKARISINDA YER ALAN SİYAH ALAN İÇİN BU KODU YAZDIK !! BAŞLIK HER ZAMAN SİYAH ALANINDA ALTINDA DÜZGÜN GÖRÜNECEK! (WITH NOTCH)(CUSTOM NAVBAR)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            // DETAIL BOTTOM PART
            // RATINGS + SIZES
            // DESCRIPTION
            // QUANTITY + FAVOURITE
            // ADD TO CART
            Spacer()
        }) //: VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

    // MARK: - PREVIEW
#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
}
