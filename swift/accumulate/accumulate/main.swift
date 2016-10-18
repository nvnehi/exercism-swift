// imports
import Foundation

// extensions
extension Array {
    // methods
    func accumulate<T>(_ operation: (Element) -> T) -> [T] {
        return self.map { operation($0) }
    }
}
