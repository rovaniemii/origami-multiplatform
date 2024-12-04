//
//  MainView.swift
//  iosApp
//
//  Created by 이현재 on 12/4/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            PaperCardsView()
                .navigationTitle("종이접기")
        }
    }
}
