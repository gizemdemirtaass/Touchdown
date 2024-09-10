//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by gizem demirtas on 10.09.2024.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PREVIEW
    
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

    // MARK: - PREVIEW
#Preview {
    FeaturedTabView()
        .background(Color.gray)
}
