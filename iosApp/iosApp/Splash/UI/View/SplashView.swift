//
//  SplashView.swift
//  iosApp
//
//  Created by 이현재 on 12/4/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("개새냥 종이접기")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            VStack {
                Spacer()
                Image(.splashLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    SplashView()
}
