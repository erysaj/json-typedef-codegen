// Code generated by jtd-codegen for Swift v0.2.1

import Foundation

/// A GeoJSON object MAY have a member named "bbox" to include information
/// on the coordinate range for its Geometries, Features, or
/// FeatureCollections.  The value of the bbox member MUST be an array of
/// length 2*n where n is the number of dimensions represented in the
/// contained geometries, with all axes of the most southwesterly point
/// followed by all axes of the more northeasterly point.  The axes order of
/// a bbox follows the axes order of geometries.
/// 
/// The "bbox" values define shapes with edges that follow lines of constant
/// longitude, latitude, and elevation.
/// 
/// The four lines of the bounding box are defined fully within the
/// coordinate reference system; that is, for a box bounded by the values
/// "west", "south", "east", and "north", every point on the northernmost
/// line can be expressed as
/// 
/// (lon, lat) = (west + (east - west) * t, north)
/// 
/// with 0 <= t <= 1.
/// 
/// Consider a set of point Features within the Fiji archipelago, straddling
/// the antimeridian between 16 degrees S and 20 degrees S. The southwest
/// corner of the box containing these Features is at 20 degrees S and 177
/// degrees E, and the northwest corner is at 16 degrees S and 178 degrees
/// W.  The antimeridian-spanning GeoJSON bounding box for this
/// FeatureCollection is
/// 
/// "bbox": [177.0, -20.0, -178.0, -16.0]
/// 
/// and covers 5 degrees of longitude.
/// 
/// The complementary bounding box for the same latitude band, not crossing
/// the antimeridian, is
/// 
/// "bbox": [-178.0, -20.0, 177.0, -16.0]
/// 
/// and covers 355 degrees of longitude.
/// 
/// The latitude of the northeast corner is always greater than the latitude
/// of the southwest corner, but bounding boxes that cross the antimeridian
/// have a northeast corner longitude that is less than the longitude of the
/// southwest corner.
/// 
/// A bounding box that contains the North Pole extends from a southwest
/// corner of "minlat" degrees N, 180 degrees W to a northeast corner of 90
/// degrees N, 180 degrees E.  Viewed on a globe, this bounding box
/// approximates a spherical cap bounded by the "minlat" circle of latitude.
/// 
/// "bbox": [-180.0, minlat, 180.0, 90.0]
/// 
/// A bounding box that contains the South Pole extends from a southwest
/// corner of 90 degrees S, 180 degrees W to a northeast corner of "maxlat"
/// degrees S, 180 degrees E.
/// 
/// "bbox": [-180.0, -90.0, 180.0, maxlat]
/// 
/// A bounding box that just touches the North Pole and forms a slice of an
/// approximate spherical cap when viewed on a globe extends from a
/// southwest corner of "minlat" degrees N and "westlon" degrees E to a
/// northeast corner of 90 degrees N and "eastlon" degrees E.
/// 
/// "bbox": [westlon, minlat, eastlon, 90.0]
/// 
/// Similarly, a bounding box that just touches the South Pole and forms a
/// slice of an approximate spherical cap when viewed on a globe has the
/// following representation in GeoJSON.
/// 
/// "bbox": [westlon, -90.0, eastlon, maxlat]
/// 
/// Implementers MUST NOT use latitude values greater than 90 or less than
/// -90 to imply an extent that is not a spherical cap.
typealias BoundingBox = [Double]>
