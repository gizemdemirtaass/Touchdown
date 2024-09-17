//
//  CustomShape.swift
//  Touchdown
//
//  Created by gizem demirtas on 17.09.2024.
//

import SwiftUI

struct CustomShape: Shape { //Bu kod bizim için belirli bir parça döndürecektir, böylece istediğimiz zaman özel şeklimizi oluşturabiliriz! Bu özel yolun tabanı dikdörtgendir!
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return(Path(path.cgPath))
    } // Özetle bu kod sol üst ve sağ üst köşede kavisli çizgi parçaları oluşturur.
    
    
}

    // MARK: - PREVIEW
#Preview {
    CustomShape()
        .previewLayout(.fixed(width: 428, height: 120))
        .padding()
}
