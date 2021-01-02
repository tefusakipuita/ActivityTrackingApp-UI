//
//  Extension.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI


// MARK: - Color
extension Color {
    
    
    // MARK: -
    static let appBlue = Color.init(red: 94/255, green: 112/255, blue: 216/255)
    static let appPurple = Color.init(red: 202/255, green: 87/255, blue: 227/255)
    
    static let appGrediant = LinearGradient(
        gradient: Gradient(colors: [appBlue, appBlue, appPurple]),
        startPoint: .top,
        endPoint: .bottom)
    
    static let appGrediantTopLeadingToBottomTrailling = LinearGradient(
        gradient: Gradient(colors: [appBlue, appPurple]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    
    
    // MARK: -
    static let appWhite = Color.init(red: 246/255, green: 247/255, blue: 248/255)
    static let appSkyBlue = Color.init(red: 81/255, green: 220/255, blue: 242/255)
    
    
    // MARK: -
    static let appGrediantWhite = LinearGradient(
        gradient: Gradient(colors: [Color.white, Color.white]),
        startPoint: .top,
        endPoint: .bottom)
}


// MARK: - ScreenWidth & Edge

var screenWidth = UIScreen.main.bounds.width

var edge = UIApplication.shared.windows.first?.safeAreaInsets
