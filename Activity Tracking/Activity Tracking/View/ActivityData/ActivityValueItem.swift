//
//  ActivityValueItem.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct ActivityValueItem: View {
    
    // MARK: - Property
    
    @Binding var selected: Int
    
    @Binding var showDetail: String
    
    var item: ValueItem
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - Background
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    selected == item.id ? LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing) : LinearGradient(gradient: Gradient(colors: [Color.white, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .shadow(color: Color.black.opacity(0.12), radius: 10, y: 2)
            
            // MARK: - Main
            VStack (alignment: .leading) {
                Image(systemName: item.imageName)
                    .foregroundColor(selected == item.id ? .white : item.imageColor)
                    .font(.system(size: 22))
                    .rotationEffect(Angle(degrees: item.imageRotation))
                    .padding(.bottom, 4)
                
                Text("\(item.value)")
                    .foregroundColor(selected == item.id ? .white : .black)
                    .font(.system(size: 20, weight: .semibold))
                
                Text("kcal")
                    .foregroundColor(selected == item.id ? .white : .gray)
                    .font(.system(size: 14))
            } //: VStack
            .padding(.trailing, 14)
            
        } //: ZStack
        .frame(width: (screenWidth - 50 - 32) / 3, height: 130)
        .onTapGesture(perform: {
            withAnimation {
                selected = item.id
                
                showDetail = ""
            }
        })
    }
}

// MARK: - Preview

struct ActivityValueItem_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
