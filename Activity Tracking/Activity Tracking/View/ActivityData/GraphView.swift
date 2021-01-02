//
//  GraphView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/28.
//

import SwiftUI

struct GraphView: View {
    
    // MARK: - Property
    
    // 選択されているグラフ
    @Binding var selected: Int
    
    // 選択されているデータ
    @Binding var showDetail: String
    
    var grayGradient = LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.2), Color.gray.opacity(0.2)]), startPoint: .leading, endPoint: .trailing)
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            
            // MARK: - 3つのグラフ (選択時のグラフのみ色をGradientに)
            ForEach(0..<3) { i in
                Rectangle()
                    .fill(
                        selected == i ? LinearGradient(gradient: Gradient(colors: [Color("Color2"), Color("Color1")]), startPoint: .top, endPoint: .bottom) : grayGradient
                    )
                    .mask(
                        LineGraph(data: getCaloriesFromData(data: Data.valueItems[i].caloryData))
                            .stroke(lineWidth: selected == i ? 3 : 2)
                    )
            }
            
            
            // MARK: - グラフ用のブラー
            LineGraph(data: getCaloriesFromData(data: Data.valueItems[selected].caloryData))
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color("Color2").opacity(0.2), Color("Color2").opacity(0.01)]), startPoint: .top, endPoint: .bottom)
                )
            
            
            // MARK: - 詳細用 Indicator
            HStack (spacing: 28) {
                ForEach(Data.valueItems[selected].caloryData) { data in
                    ZStack (alignment: .bottom) {
                        
                        // MARK: - ※ここの透明の長方形をタップすることで詳細を表示させる
                        // opacityを0にしたり、Color.clearにしたりするとタップ判定がなくなってしまう
                        Rectangle()
                            .fill(Color.gray.opacity(0.0001))
                            .frame(width: 50)
                            .onTapGesture(perform: {
                                withAnimation {
                                    showDetail = data.hour
                                }
                            })
                        
                        // MARK: - 詳細
                        GraphIndicatorView(value: data.value / 2)
                            .opacity(showDetail == data.hour ? 1 : 0)
                    } //: ZStack
                } //: ForEach
            } //: HStack
            .offset(x: -4)
            
        } //: ZStack
    }
    
    
    // MARK: - Function
    
    // CaloryData配列から、valueのみを取り出して新しい配列を作る
    func getCaloriesFromData(data: [CaloryData]) -> [CGFloat] {
        var calories: [CGFloat] = []
        
        for i in data {
            calories.append(i.value)
        }
        
        return calories
    }
}

// MARK: - Preview

struct GraphView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityDataView()
    }
}
