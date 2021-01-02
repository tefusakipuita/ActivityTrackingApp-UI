//
//  CaloryData.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct CaloryData: Identifiable {
     
    var id = UUID()
    var hour: String
    var value: CGFloat
    var selected = false
}
