import Foundation

struct Comic: Codable, Identifiable {
    let id: Int
    let title: String
    let alt: String
    let img: String

    enum CodingKeys: String, CodingKey {
        case id = "num"
        case title
        case alt
        case img
    }
}
