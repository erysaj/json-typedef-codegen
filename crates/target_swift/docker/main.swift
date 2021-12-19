import Foundation

while let line = readLine() {
    let decoder = JSONDecoder()
    let payload = try decoder.decode(MAIN.self, from: line.data(using: .utf8)!)
    let encoder = JSONEncoder()
    try print(String(data: encoder.encode(payload), encoding: .utf8)!)
}