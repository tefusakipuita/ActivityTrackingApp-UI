//
//  ActivityValueView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityValueView: View {
    
    // MARK: - Property
    
    @Binding var selected: Int
    
    @Binding var showDetail: String
    
    
    // MARK: - Body
    
    var body: some View {
        HStack (spacing: 16) {
            ForEach(Data.valueItems) { item in
                ActivityValueItem(selected: $selected, showDetail: $showDetail, item: item)
            } //: ForEach
        } //: HStack
    }
}

// MARK: - Preview

struct ActivityValueView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
