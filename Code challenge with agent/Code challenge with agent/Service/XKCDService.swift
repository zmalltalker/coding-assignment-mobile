import Foundation

class XKCDService {
    private let baseURL = "https://xkcd.com"

    func fetchLatestComic(completion: @escaping (Result<Comic, Error>) -> Void) {
        let urlString = "\(baseURL)/info.0.json"
        fetchData(from: urlString, completion: completion)
    }

    func fetchComic(number: Int, completion: @escaping (Result<Comic, Error>) -> Void) {
        let urlString = "\(baseURL)/\(number)/info.0.json"
        fetchData(from: urlString, completion: completion)
    }

    private func fetchData(from urlString: String, completion: @escaping (Result<Comic, Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NSError(domain: "Invalid URL", code: 0, userInfo: nil)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: 0, userInfo: nil)))
                return
            }

            do {
                let comic = try JSONDecoder().decode(Comic.self, from: data)
                completion(.success(comic))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
