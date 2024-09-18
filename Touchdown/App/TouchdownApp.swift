//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by gizem demirtas on 9.09.2024.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop()) //Bu ortam nesnesi değiştiricisi, paylaşılan verilere dayanan görünümler oluşturmamızı sağlar.
            //Artık Shop() sınıfının özelliklerine her yerden erişebiliriz!
        }
    }
}
