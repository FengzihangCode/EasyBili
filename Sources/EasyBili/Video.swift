//
//  File.swift
//  
//
//  Created by feng on 1/4/25.
//

import Foundation

public struct Video: Identifiable {
    public let id: Int
    public let title: String
    public let description: String
    public let authorName: String
    public let viewCount: Int
    public let likeCount: Int
    public let coinCount: Int
    public let shareCount: Int
    public let danmakuCount: Int

    public init(id: Int, title: String, description: String, authorName: String, viewCount: Int, likeCount: Int, coinCount: Int, shareCount: Int, danmakuCount: Int) {
        self.id = id
        self.title = title
        self.description = description
        self.authorName = authorName
        self.viewCount = viewCount
        self.likeCount = likeCount
        self.coinCount = coinCount
        self.shareCount = shareCount
        self.danmakuCount = danmakuCount
    }
}
