func myFunction(param: String) -> Result<String, Error> {
    guard let url = URL(string: param) else {
        return .failure(URLError(.badURL))
    }
    do {
        let contents = try String(contentsOf: url)
        return .success(contents)
    } catch let error {
        return .failure(error)
    }
}

// Example usage
let urlString = "https://www.example.com"

switch myFunction(param: urlString) {
case .success(let contents):
    print("Successfully retrieved contents:\n", contents)
case .failure(let error):
    print("Error: ", error)
}