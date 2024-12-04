//
//  PaperCardViewData.swift
//  iosApp
//
//  Created by 이현재 on 12/4/24.
//  Copyright © 2024 orgName. All rights reserved.
//

import Foundation

struct PaperCardViewData {
    let id: Int
    let image: String
    let name: String
    let description: String
    let rating: Double

    static var sample: PaperCardViewData {
        PaperCardViewData(
            id: 0,
            image: "https://fastly.picsum.photos/id/509/600/600.jpg?hmac=kbFfy3eA9yAzjUpVAWBX5zoyUFFwKbMPbZX7pgLPIsM",
            name: "Lorem Ipsum",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc eu dignissim eros, a ullamcorper neque.",
            rating: 4.7
        )
    }
}
