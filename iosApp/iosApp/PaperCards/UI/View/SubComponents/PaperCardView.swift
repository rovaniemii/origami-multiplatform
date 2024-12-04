//
//  PaperCardView.swift
//  iosApp
//
//  Created by 이현재 on 12/4/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import SwiftUI

struct PaperCardView: View {
    var viewData: PaperCardViewData
    var touchAction: () -> Void

    init(viewData: PaperCardViewData, touchAction: @escaping () -> Void) {
        self.viewData = viewData
        self.touchAction = touchAction
    }

    var body: some View {
        Button(
            action: touchAction,
            label: {
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: viewData.image)) { phase in
                        switch phase {
                        case .success(let image):
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                        default:
                            Rectangle()
                                .background(Color.clear)
                                .aspectRatio(1, contentMode: .fit)
                        }
                    }
                    .aspectRatio(1, contentMode: .fit)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 12)
                    )

                    Spacer().frame(height: 8)

                    Text(viewData.name)
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(
                            Color(red: 0x1D / 255.0, green: 0x1B / 255.0, blue: 0x20 / 255.0)
                        )

                    Spacer().frame(height: 4)

                    Text(viewData.description)
                        .font(.system(size: 12))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .foregroundStyle(
                            Color(red: 0x49 / 255.0, green: 0x45 / 255.0, blue: 0x4F / 255.0)
                        )

                    Spacer().frame(height: 4)
                    HStack(spacing: 1) {
                        ForEach(0 ..< Int(ceil(viewData.rating)), id: \.self) { _ in
                            Image(.icRating)
                                .resizable()
                                .frame(width: 12, height: 12)
                        }
                    }
                }
            }
        ).padding(8)
    }
}
