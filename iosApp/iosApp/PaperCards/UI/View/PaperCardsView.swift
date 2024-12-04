//
//  PaperCardsView.swift
//  iosApp
//
//  Created by 이현재 on 12/4/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct PaperCardsView: View {
    let columns = [
        GridItem(.flexible(), spacing: 0),  // spacing: 0 -> 사이 간격 제거
        GridItem(.flexible(), spacing: 0),
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(0 ..< 1000, id: \.self) { _ in
                    PaperCardView(viewData: .sample) {}
                }
            }.padding([.leading, .trailing], 8)
        }
    }
}
