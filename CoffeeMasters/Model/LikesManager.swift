import Foundation

class LikesManager: ObservableObject {
    static let key = "likes"
    @Published var likes: Set<Int> = []
    
    init() {
        if let savedLikes = UserDefaults.standard.array(forKey: LikesManager.key) as? [Int] {
            likes = Set(savedLikes)
        }
    }
    
    func isLiked(id: Int) -> Bool {
        return likes.contains(id)
    }
    
    func toggle(_ id: Int) {
        if isLiked(id: id) {
            likes.remove(id)
        } else {
            likes.insert(id)
        }
        saveLikes()
    }
    
    private func saveLikes() {
        UserDefaults.standard.set(Array(likes), forKey: LikesManager.key)
    }
}
