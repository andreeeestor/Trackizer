//
//  WelcomeView.swift
//  Trackizer
//
//  Created by André Nestor on 16/03/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome_screen")
            // O resizable é apenas para tirar o zoom que tem na imagem
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                Spacer()
                Text("Lorem ipsum blablabla")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
            }
             
        }
        // esse ignoresSafeArea ignora a parte superior e inferior da tela do celular
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
