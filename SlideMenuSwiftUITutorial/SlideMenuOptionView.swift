//
//  SlideMenuOptionView.swift
//  SlideMenuSwiftUITutorial
//
//  Created by Ngo Dang tan on 01/01/2021.
//

import SwiftUI

struct SlideMenuOptionView: View {
    let viewModel: SlideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .frame(width: 24, height: 24)
            
            Text(viewModel.title)
                .font(.system(size: 15,weight: .semibold))
            
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SlideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuOptionView(viewModel: .messages)
    }
}
