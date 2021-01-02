//
//  SlideMenuView.swift
//  SlideMenuSwiftUITutorial
//
//  Created by Ngo Dang tan on 01/01/2021.
//

import SwiftUI

struct SlideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                // Header
                SlideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                   
                
                // Cell items
                
                ForEach (SlideMenuViewModel.allCases,id: \.self){ option in
                    NavigationLink(
                        destination: Text(option.title),
                        label: {
                            SlideMenuOptionView(viewModel: option)
                        })
                }
                
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SlideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuView(isShowing: .constant(true))
    }
}
