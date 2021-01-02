//
//  ActivityMenuView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityMenuView: View {
    
    // MARK: - Property
    
    @Binding var selected: Int
    
    @Binding var showDetail: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 12) {
            ForEach(Data.valueItems) { item in
                ActivityMenuItem(selected: $selected, showDetail: $showDetail, item: item)
            }
        } //: HStack
    }
}

// MARK: - Preview

struct ActivityMenuView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
