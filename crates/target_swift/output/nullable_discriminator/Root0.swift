// Code generated by jtd-codegen for Swift v0.2.1

import Foundation

public enum Root0 {
    case bar(RootBar)
    case quux(RootQuux)

    enum Tag: String {
        case bar = "bar"
        case quux = "quux"
    }

    enum CodingKeys: String, CodingKey {
        case tag = "foo"
    }

    init(from decoder: Decoder) throws {
        var container = decoder.container(keyedBy: CodingKeys.self)

        let tag = try container.decode(Tag.self, forKey: .tag)
        switch tag {
        case .bar:
            let props = try RootBar(from: decoder)
            self = .bar(props)
        case .quux:
            let props = try RootQuux(from: decoder)
            self = .quux(props)
        }
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case let .bar(props):
            try props.encode(to: encoder)
        case let .quux(props):
            try props.encode(to: encoder)
        }
    }
}
