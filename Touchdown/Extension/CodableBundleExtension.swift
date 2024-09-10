//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by gizem demirtas on 10.09.2024.
//

import Foundation

extension Bundle {
    //T = type demek! Bu yer tutucu t tipini her yerde kullanabiliriz!! -> GENERICS
    //Bu T harfi, çalışmak istediğimiz tür için tam anlamıyla bir yer tutucudur!
    
    func decode<T: Codable>(_ file: String ) -> T { //Codable protokolüne uygun yeni bir kod çözme işlemi, bu kod ile uygulamalar paketinden herhangi bir yerel json dosyasını çözebileceğiz!
        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
                
        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        // 3. Create a decoder
        let decoder = JSONDecoder()
        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        // 5. Return the ready-to-use data
        return loaded
    }
}
