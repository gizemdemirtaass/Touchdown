//
//  Shop.swift
//  Touchdown
//
//  Created by gizem demirtas on 18.09.2024.
//

import Foundation

class Shop : ObservableObject { // Bu kod ile dükkan sınıfını gözlemlenebilir nesne protokolüne uygun hale getirdik! (gözlemlenebilir nesne) - Bu sınıfın örneklerinin istediğimiz herhangi bir görünümün içinde kullanılmasına olanak sağlar böylece önemli değişiklikler olduğunda görünüm yeniden yüklenir!
    @Published var showingProduct : Bool = false //ürünün detayı -> Bu @Published property wrapper, Swift UI da bu özelliklerdeki herhangi bir değişikliğin görünüm yeniden yüklenmelerini tetiklemesi gerektiğini söyler.
    @Published var selectedProduct : Product?
    //= nil
    //hangi ürün gösterilecek?
    //Product?, swift de isteğe bağlı bir özellik olduğu anlamına gelir!
    
}
