// imports
import Foundation

// extensions
extension Array {
    // methods
    func accumulate<T>(_ operation: (Element) -> T) -> [T] {
        var results: [T] = []
        
        // append the result of the operation to the results array
        for n in self { results.append(operation(n)) }
        
        return results
    }
}
