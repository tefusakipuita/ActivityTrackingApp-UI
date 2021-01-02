//
//  ValueItem.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct ValueItem: Identifiable {
     
    var id: Int
    var title: String
    var imageName: String
    var value: Int
    var imageColor: Color
    var imageRotation: Double
    var caloryData: [CaloryData]
}
