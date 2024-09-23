//
//  ContentView.swift
//  Touchdown
//
//  Created by gizem demirtas on 9.09.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES -> Code snippets ile oluşturduk (Kod parçacıkları) "cmd" ile çalışmaktadır!
    @EnvironmentObject var shop: Shop //@EnvironmentObject protery kullanarak shop a varsayılan bir değer vermedik!
   //NOT: Kodu katlamak için -> option + command + <- TUŞLARINI KULLAN!
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil { //Kullanıcılar hiç bir ürün seçmez ise anasayfayı görecektir!
                VStack (spacing:0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top,
                          UIApplication.shared.windows.first?.safeAreaInsets.top)
                    //IPHONE NUN YUKARISINDA YER ALAN SİYAH ALAN İÇİN BU KODU YAZDIK !! BAŞLIK HER ZAMAN SİYAH ALANINDA ALTINDA DÜZGÜN GÖRÜNECEK! (WITH NOTCH)(CUSTOM NAVBAR)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x:0, y:5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack (spacing: 0) {
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing:15, content: {
                                ForEach (products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                
                                } //: LOOP
                            }) //: GRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VSTACK
                        
                    }) //: SCROLL
                    
                } //: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .all)
    }
}

    // MARK: - PREVIEW

#Preview {
    ContentView()
        .environmentObject(Shop()) //önizlemenin özelliklere erişilebilmesi için ortam nesnesini depiştiricisini eklemeliyiz!
        
}
