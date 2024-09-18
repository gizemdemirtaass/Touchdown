//
//  Constant.swift
//  Touchdown
//
//  Created by gizem demirtas on 10.09.2024.
//

import SwiftUI
//Amacımız, uygulamanın renkler, yazı tipleri, resimler, dizeler, URL'ler vb. gibi temel verilerini ve kaynaklarını toplamaktadır.

 // DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct : Product = products[0] //Json dosyasındaki ilk ürünü oluşturduk!
 // COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4) //varlık kataloğundaki bir renk setine referans veren sabit!

 // LAYOUT
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] { return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count:2) }

 // UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
 // API
 // IMAGE
 // FONT
 // STRING
 // MISC


