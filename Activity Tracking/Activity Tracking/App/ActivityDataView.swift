//
//  ActivityDataView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityDataView: View {
    
    // MARK: - Property
    
    @Environment(\.presentationMode) var presentation
    
    @State var selected = 0
    @State var showDetail: String = ""
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            
            // MARK: - Dismiss Button
            HStack {
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .frame(width: 55, height: 55)
                            .shadow(color: Color.black.opacity(0.1), radius: 6, y: 2)
                        
                        Image(systemName: "arrow.backward")
                            .foregroundColor(Color.black.opacity(0.7))
                    } //: ZStack
                }) //: Button
                
                Spacer()
            } //: HStack
            .padding(.top, 10)
            
            // MARK: - Top view with date
            HStack {
                VStack (alignment: .leading) {
                    Text("Monday")
                        .font(.system(size: 34, weight: .semibold))
                    Text("Nov 26, 2020")
                        .foregroundColor(.gray)
                } //: VStack
                
                Spacer()
            } //: HStack
            .padding(.top, 24)
            
            
            // MARK: - Activity Menu View
            ActivityMenuView(selected: $selected, showDetail: $showDetail)
                .padding(.top, 28)
            
            // MARK: - Activity graph view
            ActivityGraphView(selected: $selected, showDetail: $showDetail)
                .padding(.top, 28)
            
            // MARK: - Activity value view
            ActivityValueView(selected: $selected, showDetail: $showDetail)
                .padding(.top, 28)
            
            Spacer()
        } //: VStack
        .padding(.horizontal, 25)
    }
}

// MARK: - Preview

struct ActivityDataView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
