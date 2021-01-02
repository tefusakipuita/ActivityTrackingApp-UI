//
//  GraphIndicatorView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/29.
//

import SwiftUI

struct GraphIndicatorView: View {
    
    // MARK: - Property
    
    var value: CGFloat
    
    
    // MARK: - Body
    
    var body: some View {
        
        ZStack (alignment: .bottom) {
            
            // MARK: - 破線
            VerticalLine()
                .stroke(Color("Color2").opacity(0.4), style: StrokeStyle(lineWidth: 1.5, dash: [5]))
                .frame(height: value)
            
            // MARK: - 円形のポインター
            Group {
                Circle()
                    .fill(Color.white)
                    .frame(width: 12, height: 12)
                
                Circle()
                    .stroke(Color("Color2"), lineWidth: 4)
                    .frame(width: 12, height: 12)
            } //: Group
            .padding(.bottom, value - 6)
            
        } //: ZStack
        
        // MARK: - kcal Value
        .overlay(
            HStack (spacing: 0) {
                Image(systemName: "flame")
                    .foregroundColor(.orange)
                    .padding(.trailing, 10)
                
                Text("\(Int(value * 2))")
                    .font(.system(size: 22, weight: .semibold))
                    .foregroundColor(Color.black.opacity(0.75))
                    .padding(.trailing, 2)
                    .fixedSize()
                
                Text("kcal")
                    .foregroundColor(.gray)
                    .font(.system(size: 14))
            } //: HStack
            .padding(.bottom, value + 46)
            .frame(width: 100)
        )
        
    }
}

// MARK: - Preview

struct GraphIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
