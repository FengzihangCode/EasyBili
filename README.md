Language: English｜<a href="./README_zh.md">简体中文</a>

# EasyBili

EasyBili is a lightweight Swift library for interacting with the BiliBili API. It provides simple access to popular and recommended video data from BiliBili.

---

## Installation

### Swift Package Manager

To integrate EasyBili into your project using Swift Package Manager:

1. In Xcode, go to **File > Add Packages**.  
2. Enter the repository URL for EasyBili:  https://github.com/FengzihangCode/EasyBili
3. Select the desired version or branch and add the package to your project.

---

## Usage

### Importing the Framework

Start by importing the framework:  
```swift
import EasyBili

```

### Fetching Popular Videos
To fetch popular videos from BiliBili:
```
EasyBili.shared.fetchPopularVideos { videos in
    for video in videos {
        print("Title: \(video.title), Author: \(video.authorName), Views: \(video.viewCount)")
    }
}
```

### Fetching Recommended Videos
To fetch recommended videos:
```
EasyBili.shared.fetchRecommendedVideos { videos in
    for video in videos {
        print("Title: \(video.title), Description: \(video.description)")
    }
}
```

---

## Video Model
EasyBili includes a ```Video``` struct that encapsulates the metadata for a video:
```
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
```

---

## Contributing
Contributions are welcome! Feel free to submit a pull request or file an issue.

---

## License
EasyBili is released under the MIT License. See the <a href="./LICENSE">LICENSE</a> file for details.

---

## Disclaimer
> [!NOTE]
> This library is not affiliated with or endorsed by BiliBili. It is intended for educational and personal use only. Use this library responsibly and adhere to BiliBili's terms of service.
