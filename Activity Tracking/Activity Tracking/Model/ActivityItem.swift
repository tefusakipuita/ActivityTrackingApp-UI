//
//  ActivityItem.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct ActivityItem: Identifiable {
     
    var id = UUID()
    var title: String
    var color: Color
    var imageName: String
    var imageRotation: Double
    var progress: CGFloat
}
