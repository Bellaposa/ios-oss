import Curry
import Runes

public struct AccessTokenEnvelope {
  public let accessToken: String
  public let user: User

  public init(accessToken: String, user: User) {
    self.accessToken = accessToken
    self.user = user
  }
}

extension AccessTokenEnvelope: Swift.Decodable {
  enum CodingKeys: String, CodingKey {
    case accessToken = "access_token"
    case user
  }
}
