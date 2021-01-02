//
//  ProfileStatsView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct ProfileStatsView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 36) {
            
            // MARK: - Profile Image
            ZStack {
                Circle()
                    .stroke(Color.white.opacity(0.6), lineWidth: 2)
                    .frame(width: 104, height: 104)
                
                Image("lebron")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 90, height: 90)
                    .clipShape(Circle())
            } //: ZStack
            
            VStack (spacing: 10) {
                
                // MARK: - User Name
                Text("Lebron James")
                    .font(.system(size: 22, weight: .regular))
                
                HStack (spacing: 36) {
                    
                    // MARK: - Workouts
                    VStack {
                        Text("36")
                            .font(.system(size: 24, weight: .bold))
                        
                        Text("workouts")
                    } //: VStack
                    
                    // MARK: - hours
                    VStack {
                        Text("24")
                            .font(.system(size: 24, weight: .bold))
                        
                        Text("hours")
                    } //: VStack
                } //: HStack
            } //: VStack
            .foregroundColor(.white)
            
        } //: HStack
    }
}

// MARK: - Preview

struct ProfileStatsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
