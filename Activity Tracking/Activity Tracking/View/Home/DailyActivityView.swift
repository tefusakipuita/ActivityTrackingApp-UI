//
//  DailyActivityView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct DailyActivityView: View {
    
    // MARK: - Property

    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: screenWidth - 50, height: 200)
                .shadow(color: Color.black.opacity(0.1), radius: 6, y: 6)
            
            VStack (alignment: .leading) {
                Text("Daily activity")
                    .font(.system(size: 22, weight: .semibold))
                    .padding(.bottom, 16)
                
                HStack (spacing: 37) {
                    ForEach(Data.activityItems) { item in
                        ActivityItemView(item: item)
                    } //: ForEach
                } //: HStack
            } //: VStack
        } //: ZStack
    }
}

// MARK: - Preview

struct DailyActivityView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
}
