//
//  HomeView.swift
//  Rates
//
//  Created by Kirill Frolovskiy on 29.10.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio = true
    
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            VStack {
                homeHeader
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
                .navigationBarHidden(true)
        }
    }
}

extension HomeView {
    
    private var homeHeader: some View {
        HStack {
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .background(CircleButtonAnimationView(animate: $showPortfolio))
            Spacer()
            Text(showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
            
                .onTapGesture {
                    withAnimation (.spring()){
                        showPortfolio.toggle()
                    }
                }
                .rotationEffect(Angle(degrees: showPortfolio ? 180 : 0))
        }
        .padding(.horizontal)
    }
    
}
