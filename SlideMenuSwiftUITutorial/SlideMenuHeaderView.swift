//
//  SlideMenuHeaderView.swift
//  SlideMenuSwiftUITutorial
//
//  Created by Ngo Dang tan on 01/01/2021.
//

import SwiftUI

struct SlideMenuHeaderView: View {
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
            
            
            VStack(alignment: .leading) {
                Image("menu")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom,16)
                
                Text("Eddie Brock")
                    .font(.system(size: 24, weight: .semibold))
                
                Text("@venom")
                    .font(.system(size: 14))
                    .padding(.bottom,24)
                
                HStack(spacing: 12){
                    HStack (spacing: 14){
                        Text("1,254").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4) {
                        Text("607").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct SlideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenuHeaderView(isShowing: .constant(true))
    }
}
