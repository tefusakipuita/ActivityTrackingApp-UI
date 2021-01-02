//
//  VerticalLine.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/29.
//

import SwiftUI

struct VerticalLine: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.width / 2, y: 0))
        path.addLine(to: CGPoint(x: rect.width / 2, y: rect.height))
        
        return path
    }
}
