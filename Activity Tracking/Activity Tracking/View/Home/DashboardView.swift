//
//  DashboardView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct DashboardView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 18) {
            DashboardItem(value: "5674", unit: "Steps")
            DashboardItem(value: "1107", unit: "kcal")
        } //: HStack
    }
    
}

// MARK: - Preview


struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
