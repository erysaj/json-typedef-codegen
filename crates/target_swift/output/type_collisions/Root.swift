// Code generated by jtd-codegen for Swift v0.2.1

import Foundation

public struct Root: Codable {
    public var foo: RootFoo

    public var fooBar: RootFooBar0

    enum CodingKeys: String, CodingKey {
        case foo = "foo"
        case fooBar = "foo_bar"
    }

    init(from decoder: Decoder) throws {
        var container = decoder.container(keyedBy: CodingKeys.self)

        self.foo = try container.decode(RootFoo.self, forKey: foo)
        self.fooBar = try container.decode(RootFooBar0.self, forKey: fooBar)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(self.foo, forKey: foo)
        try container.encode(self.fooBar, forKey: fooBar)
    }
}
