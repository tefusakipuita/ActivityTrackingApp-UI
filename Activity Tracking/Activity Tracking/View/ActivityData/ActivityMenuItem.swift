//
//  ActivityMenuItem.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityMenuItem: View {
    
    // MARK: - Property
    
    @Binding var selected: Int
    
    @Binding var showDetail: String
    
    var item: ValueItem
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Capsule Circle
            if selected == item.id {
                Rectangle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .mask(
                        Capsule()
                            .stroke(lineWidth: 1.5)
                    )
            }
            
            // MARK: - Menu Title
            Text(item.title)
                .foregroundColor(selected == item.id ? .black : .gray)
        } //: ZStack
        .frame(width: (screenWidth - 50 - 24) / 3, height: 42)
        .onTapGesture(perform: {
            withAnimation {
                selected = item.id
                
                showDetail = ""
            }
        })
    }
}

// MARK: - Preview

struct ActivityMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
