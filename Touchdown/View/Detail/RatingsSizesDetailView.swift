//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by gizem demirtas on 17.09.2024.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    // MARK: - PROPERTIES
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    
    // MARK: - BODY
    var body: some View {
        HStack (alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack (alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
            
            HStack(alignment: .center, spacing: 3, content: {
                ForEach(1...5, id: \.self){ item in
                    Button(action: {}, label: {
                        Image(systemName: "star.fill")
                        
                    }) //: BUTTON
                    .frame(width: 28, height: 26, alignment: .center)
                    .background(colorGray.cornerRadius(5))
                    .foregroundColor(.white)
                 
            } //: LOOP
            }) //: HSTACK
            }) //: VSTACK
            
            Spacer()
            
            // SIZES
            VStack (alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach (sizes, id:\.self) { size in
                        Button (action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.black)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2)
                                )
                        }) //: BUTTON
                        
                    } //: LOOP
                }) //: HSTACK
            }) //: VSTACK
            
            
        }) //: HSTACK
    }
}


    // MARK: - PREVIEW
#Preview {
    RatingsSizesDetailView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(Color.black)
        
}
