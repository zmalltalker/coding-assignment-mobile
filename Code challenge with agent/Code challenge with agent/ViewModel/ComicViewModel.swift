import Foundation
import Combine

class ComicViewModel: ObservableObject {
    @Published var comic: Comic?
    private let xkcdService = XKCDService()
    private var latestComicNumber: Int?

    init() {
        fetchLatestComic()
    }

    func fetchLatestComic() {
        xkcdService.fetchLatestComic { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let comic):
                    self?.comic = comic
                    self?.latestComicNumber = comic.id
                case .failure(let error):
                    print("Error fetching latest comic: \(error)")
                }
            }
        }
    }

    func fetchComic(number: Int) {
        xkcdService.fetchComic(number: number) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let comic):
                    self?.comic = comic
                case .failure(let error):
                    print("Error fetching comic \(number): \(error)")
                }
            }
        }
    }

    func fetchNextComic() {
        guard let currentComic = comic, let latestComicNumber = latestComicNumber else { return }
        let nextComicNumber = currentComic.id + 1
        if nextComicNumber <= latestComicNumber {
            fetchComic(number: nextComicNumber)
        }
    }

    func fetchPreviousComic() {
        guard let currentComic = comic else { return }
        let previousComicNumber = currentComic.id - 1
        if previousComicNumber > 0 {
            fetchComic(number: previousComicNumber)
        }
    }
}
