//
//  ProductItemView.swift
//  Touchdown
//
//  Created by gizem demirtas on 11.09.2024.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product: Product
    
    // MARK: - BODY
    var body: some View {
            //VSTACK i ilk defa contentli kullandık!
            VStack (alignment: .leading, spacing: 6, content: {
                // PHOTO
                ZStack {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .padding(10)
                   
                } //: ZSTACK
                .background(Color(red: product.red, green: product.green, blue: product.blue))
                .cornerRadius(12)
                
                // NAME
                
                Text(product.name)
                    .font(.title3)
                    .fontWeight(.black)
                
                
                // PRICE
                Text(product.formattedPrice)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                    
            }) //:VSTACK
        
    }
}

    // MARK: - PREVIEW
#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
