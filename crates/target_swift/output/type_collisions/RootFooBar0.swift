// Code generated by jtd-codegen for Swift v0.2.1

import Foundation

public struct RootFooBar0: Codable {
    public var x: String

    enum CodingKeys: String, CodingKey {
        case x = "x"
    }

    init(from decoder: Decoder) throws {
        var container = decoder.container(keyedBy: CodingKeys.self)

        self.x = try container.decode(String.self, forKey: x)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(self.x, forKey: x)
    }
}
