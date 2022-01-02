// Code generated by jtd-codegen for Swift v0.2.1

import Foundation

/// For type "Polygon", the "coordinates" member MUST be an array of
/// linear ring coordinate arrays.
public struct GeojsonObjectPolygon: Codable {
    public var coordinates: [LinearRing]

    public var bbox: BoundingBox?

    enum CodingKeys: String, CodingKey {
        case coordinates = "coordinates"
        case bbox = "bbox"
    }

    init(from decoder: Decoder) throws {
        var container = decoder.container(keyedBy: CodingKeys.self)

        self.coordinates = try container.decode([LinearRing].self, forKey: coordinates)
        self.bbox = try container.decode(BoundingBox?.self, forKey: bbox)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(self.coordinates, forKey: coordinates)
        try container.encode(self.bbox, forKey: bbox)
    }
}
