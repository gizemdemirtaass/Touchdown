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
                .zIndex(1) // Bu parçayı diğerinin üzerine taşır!!
            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                
               // RATINGS + SIZES
                RatingsSizesDetailView ()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
               // DESCRIPTION
                
                ScrollView(.vertical, showsIndicators: false, content:  {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) //:SCROLL
               // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
               // ADD TO CART
                AddToCardDetailView()
                    .padding(.bottom, 20)
                
            }) //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }) //: VSTACK
        .zIndex(0) // Z index değiştiricisini kullanarak bu görünümlerin uygun sırasını ayarlamamız gerekiyor.
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
