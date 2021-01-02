//
//  DashboardItem.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct DashboardItem: View {
    
    // MARK: - Property
    
    var value: String
    var unit: String
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.1), radius: 10, y: 2)
                .frame(height: 120)
            
            VStack (alignment: .leading, spacing: 5) {
                Text(value)
                    .font(.system(size: 28, weight: .semibold))
                    .foregroundColor(.appBlue)
                Text(unit)
                    .foregroundColor(Color.black.opacity(0.7))
                    .font(.system(size: 20, weight: .light))
            } //: VStack
            .padding(.trailing, 28)
        } //: ZStack
    }
}

// MARK: - Preview

struct DashboardItem_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
