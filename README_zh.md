# EasyBili

EasyBili 是一个轻量级的 Swift 库，用于与哔哩哔哩 API 交互。我们提供了简单的方式来获取哔哩哔哩上的热门和推荐视频数据。

---

## 安装

### 使用 Swift Package Manager

通过 Swift Package Manager 将 EasyBili 集成到您的项目中：

1. 在 Xcode 中，选择 **File > Add Packages**。  
2. 输入 EasyBili 的仓库地址：https://github.com/FengzihangCode/EasyBili
3. 选择版本或分支，并将该包添加到您的项目中。

---

## 使用方法

### 导入框架

首先，导入框架：  
```swift
import EasyBili
```

### 获取热门视频
要获取哔哩哔哩的热门视频：
```
EasyBili.shared.fetchPopularVideos { videos in
    for video in videos {
        print("标题: \(video.title), 作者: \(video.authorName), 播放量: \(video.viewCount)")
    }
}
```
### 获取推荐视频
要获取哔哩哔哩的推荐视频：
```
EasyBili.shared.fetchRecommendedVideos { videos in
    for video in videos {
        print("标题: \(video.title), 简介: \(video.description)")
    }
}
```

---

## 视频数据模型
EasyBili 提供了一个 ```Video``` 结构体，用于封装视频的元数据：
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

## 贡献
欢迎随时提交 Pull Request 或报告问题！

---

## 许可证
EasyBilit 使用 MIT 许可证发布。有关详细信息，请参阅 <a href="./LICENSE">LICENSE</a> 。

---

## 免责声明
>[!NOTE]
>此库与哔哩哔哩无关，也未获得哔哩哔哩的授权。该库仅供学习研究和个人使用。请合理使用此库，并遵守哔哩哔哩的服务条款。
