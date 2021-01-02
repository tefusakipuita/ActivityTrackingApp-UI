//
//  ActivityItemView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityItemView: View {
    
    // MARK: - Property
    
    var item: ActivityItem
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(Color.black.opacity(0.15), lineWidth: 2)
                    .frame(width: 70, height: 70)
                
                Circle()
                    .trim(from: 0, to: item.progress)
                    .stroke(item.color, lineWidth: 2)
                    .frame(width: 70, height: 70)
                    .rotationEffect(Angle(degrees: -90))
                
                Image(systemName: item.imageName)
                    .foregroundColor(item.color)
                    .rotationEffect(Angle(degrees: item.imageRotation))
            } //: ZStack
            
            Text("\(item.title)")
                .font(.system(size: 16, weight: .light))
                .padding(.top, 8)
        } //: VStack
    }
}

// MARK: - Preview

struct ActivityItemView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
