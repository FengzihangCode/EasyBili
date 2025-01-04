import Foundation

public class EasyBili {
    public static let shared = EasyBili()
    private init() {}

    // MARK: - 数据获取
    public func fetchPopularVideos(completion: @escaping ([Video]) -> Void) {
        let url = "https://api.bilibili.com/x/web-interface/popular"
        fetchVideos(from: url, completion: completion)
    }

    public func fetchRecommendedVideos(completion: @escaping ([Video]) -> Void) {
        let url = "https://api.bilibili.com/x/web-interface/index/top/rcmd"
        fetchVideos(from: url, completion: completion)
    }

    // MARK: - 数据解析
    private func fetchVideos(from urlString: String, completion: @escaping ([Video]) -> Void) {
        guard let url = URL(string: urlString) else {
            completion([])
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard
                let data = data,
                let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any],
                let data = json["data"] as? [String: Any],
                let list = data["list"] as? [[String: Any]]
            else {
                completion([])
                return
            }

            let videos = list.compactMap { self?.parseVideo(from: $0) }
            DispatchQueue.main.async {
                completion(videos)
            }
        }

        task.resume()
    }

    private func parseVideo(from dict: [String: Any]) -> Video? {
        guard
            let id = dict["aid"] as? Int,
            let title = dict["title"] as? String,
            let description = dict["desc"] as? String,
            let owner = dict["owner"] as? [String: Any],
            let authorName = owner["name"] as? String,
            let stat = dict["stat"] as? [String: Any],
            let viewCount = stat["view"] as? Int,
            let likeCount = stat["like"] as? Int,
            let coinCount = stat["coin"] as? Int,
            let shareCount = stat["share"] as? Int,
            let danmakuCount = stat["danmaku"] as? Int
        else {
            return nil
        }

        return Video(id: id, title: title, description: description, authorName: authorName, viewCount: viewCount, likeCount: likeCount, coinCount: coinCount, shareCount: shareCount, danmakuCount: danmakuCount)
    }
}
