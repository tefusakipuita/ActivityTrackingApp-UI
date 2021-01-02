//
//  ContentView.swift
//  Activity Tracking
//
//  Created by 中筋淳朗 on 2020/11/26.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Property
    
    @State var selection: Int? = nil
    
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                // MARK: - Background
                VStack (spacing: 0) {
                    
                    LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .top, endPoint: .bottom)
                        .frame(height: 340)
                    
                    Circle()
                        .fill(Color.white)
                        .scaleEffect(2.8)
                        .offset(y: 200)
                } //: VStack
                .ignoresSafeArea()
                
                VStack {
                    
                    // MARK: - Profile stats
                    ProfileStatsView()
                        .padding(.top, 14)
                    
                    NavigationLink(
                        destination: ActivityDataView()
                            .navigationBarHidden(true),
                        tag: 1,
                        selection: $selection,
                        label: {
                            // MARK: - Daily activity view
                            DailyActivityView()
                                .foregroundColor(.black)
                                .padding(.top, 28)
                                .onTapGesture(perform: {
                                    selection = 1
                                })
                        })
                    
                    // MARK: - Goals view
                    GoalsView()
                        .padding(.top, 28)
                        .padding(.horizontal, 25)
                    
                    // MARK: - Dashboard view
                    DashboardView()
                        .padding(.top, 28)
                        .padding(.horizontal, 25)
                    
                    Spacer()
                    
                    // MARK: - Bottom Tab
                    HStack {
                        Image(systemName: "bicycle")
                            .frame(width: 20, height: 20)
                        Spacer()
                        Image(systemName: "person.crop.circle")
                            .frame(width: 30, height: 30)
                            .padding(8)
                            .foregroundColor(.white)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color("Color1"), Color("Color2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .clipShape(Circle())
                            )
                        Spacer()
                        Image(systemName: "gearshape.2.fill")
                            .frame(width: 20, height: 20)
                    } //: HStack
                    .foregroundColor(Color.gray.opacity(0.4))
                    .font(.system(size: 26))
                    .padding(.horizontal, 80)
                    
                } //: VStack
            } //: ZStack
            .navigationBarHidden(true)
        } //: NavigationView
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
