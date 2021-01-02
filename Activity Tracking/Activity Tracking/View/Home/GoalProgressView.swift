//
//  GoalProgressView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct GoalProgressView: View {
    
    // MARK: - Property
    
    var title: String
    var initial: Int
    var goal: Int
    var currentValue: Int
    var progressColor: Color
    var reverseGoal: Bool
    var kg: Bool
    
    var progressWidth = UIScreen.main.bounds.width - 50
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            // MARK: - Progress View
            ProgressView(title, value: getCurrentPercentageValue(), total: 100)
                .accentColor(progressColor)
            
            ZStack {
                
                // MARK: - Initial & Goal Value
                HStack {
                    HStack (spacing: kg ? 5 : 0) {
                        Text(reverseGoal ? "\(goal)" : "\(initial)")
                        Text(kg ? "kg" : "")
                    } //: HStack
                    
                    Spacer()
                    
                    HStack (spacing: kg ? 5 : 0) {
                        Text(reverseGoal ? "\(initial)" : "\(goal)")
                        Text(kg ? "kg" : "")
                    } //: HStack
                } //: HStack
                
                // MARK: - Current Progress Value
                HStack (spacing: kg ? 5 : 0) {
                    Text("\(currentValue)")
                    Text(kg ? "kg" : "")
                    
                    Spacer()
                } //: HStack
                .foregroundColor(progressColor)
                .padding(.leading, progressWidth * CGFloat(getCurrentPercentageValue()) / 100 - 10)
                
            } //: ZStack
        } //: VStack
        .foregroundColor(Color.gray.opacity(0.7))
    }
    
    
    // MARK: - Function
    
    func getCurrentPercentageValue() -> Double {
        return Double((currentValue - initial) * 100 / (goal - initial))
    }
}

// MARK: - Preview

struct GoalProgressView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
