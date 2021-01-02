//
//  LineGraph.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/29.
//

import SwiftUI

struct LineGraph: Shape {
    
    let data: [CGFloat]
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        if data.count == 0 {
            return path
        }
        
        
        var x: CGFloat = 20
        var y: CGFloat = 340 - data[0] / 2
        
        path.move(to: CGPoint(x: x, y: y))
        
        var previousPoint = CGPoint(x: x, y: y)
        
        x += 78
        
        for i in 1..<data.count {
            y = 340 - data[i] / 2
            
            let currentPoint = CGPoint(x: x, y: y)
            
            let controlPoint1 = CGPoint(x: previousPoint.x + 30, y: previousPoint.y)
            let controlPoint2 = CGPoint(x: currentPoint.x - 30, y: currentPoint.y)
            
            path.addCurve(to: currentPoint, control1: controlPoint1, control2: controlPoint2)
            
            previousPoint = currentPoint
            
            x += 78
        }
        
        return path
    }
}
