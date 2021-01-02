//
//  ActivityGraphView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityGraphView: View {
    
    // MARK: - Property
    
    @Binding var selected: Int
    
    @Binding var showDetail: String
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
                .shadow(color: Color.black.opacity(0.12), radius: 10, y: 2)
            
            HStack {
                
                // MARK: - Left kcal
                VStack (alignment: .leading) {
                    Spacer()
                    Text("500 kcal")
                    Spacer()
                    Text("250 kcal")
                    Spacer()
                    Text("0 kcal")
                } //: VStack
                .foregroundColor(Color.gray.opacity(0.7))
                .font(.system(size: 14))
                .padding(.bottom, 26)
                
                VStack {
                    Spacer()
                    ScrollView (.horizontal, showsIndicators: false) {
                        
                        // MARK: - Graph
                        GraphView(selected: $selected, showDetail: $showDetail)
                            .frame(height: 340)
                        
                        // MARK: - Hour
                        HStack (spacing: 34) {
                            ForEach(Data.valueItems[selected].caloryData) { data in
                                Text("\(data.hour)")
                                    .foregroundColor(Color.gray.opacity(0.7))
                                    .font(.system(size: 14))
                            }
                            .padding(.trailing, 14)
                        } //: HStack
                    } //: Scroll
                } //: VStack
                .padding(.bottom, 4)
                
            } //: HStack
            .padding(.leading, 12)
            .padding(.bottom, 16)
            
        } //: ZStack
        .frame(height: 400)
    }
}

// MARK: - Preview

struct ActivityGraphView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
