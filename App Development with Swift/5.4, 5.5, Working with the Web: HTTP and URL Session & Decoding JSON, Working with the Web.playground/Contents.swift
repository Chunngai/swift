import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!
print(url.scheme)

var task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    if let data = data, let string = String(data: data, encoding: .utf8) {
        print(string)
    }
    // PlaygroundPage.current.finishExecution()
}
task.resume()

extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map {
            URLQueryItem(name: $0.0, value: $0.1)
        }
        return components?.url
    }
}

let baseURL = URL(string: "https://api.nasa.gov/planetary/apod")!

let query: [String: String] = ["api_key": "DEMO_KEY", "date": "2011-07-13"]

url = baseURL.withQueries(query)!
task = URLSession.shared.dataTask(with: url) { (data, response, error) in
    let jsonDecoder = JSONDecoder()
    // if let data = data, let string = String(data: data, encoding: .utf8) {
    if let data = data, let photoDictionary = try? jsonDecoder.decode([String: String].self, from: data) {
        // print(string)
        print(photoDictionary)
    }
    PlaygroundPage.current.finishExecution()
}
task.resume()

