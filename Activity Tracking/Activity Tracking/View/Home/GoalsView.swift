//
//  GoalsView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct GoalsView: View {
    
    // MARK: - Property
    
    
    // MARK: - Body
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Goal")
                .font(.system(size: 22, weight: .semibold))
                .padding(.bottom, 14)
            
            GoalProgressView(title: "50 workouts", initial: 0, goal: 50, currentValue: 16, progressColor: .appSkyBlue, reverseGoal: false, kg: false)
            GoalProgressView(title: "desired weight", initial: 55, goal: 61, currentValue: 58, progressColor: .appPurple, reverseGoal: true, kg: true)
                .padding(.top, 18)
        } //: VStack
    }
}

// MARK: - Preview

struct GoalsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
