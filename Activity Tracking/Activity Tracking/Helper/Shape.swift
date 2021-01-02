//
//  Shape.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct cornerShape: Shape {
    var corner: UIRectCorner
    var radius: CGSize
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: radius)
        
        return Path(path.cgPath)
    }
}
