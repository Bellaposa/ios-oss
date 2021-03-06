import Curry
import Runes

public struct Item {
  public let description: String?
  public let id: Int
  public let name: String
  public let projectId: Int
}

extension Item: Swift.Decodable {
  enum CodingKeys: String, CodingKey {
    case description
    case id
    case name
    case projectId = "project_id"
  }
}
