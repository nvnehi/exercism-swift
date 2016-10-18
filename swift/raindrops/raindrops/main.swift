// imports
import Foundation

// types
struct Raindrops {
    // properties
    var sounds: String = ""
    
    // initializers
    init(_ number: Int) {
        let factors = getFactors(for: number)
        
        // ensure that 3, 5, or 7 are a factor of number
        guard !(Set([3, 5, 7]).isDisjoint(with: factors)) else {
            sounds = number.description
            return
        }

        // iterate the list and build the appropriate string
        for f in factors {
            if f == 3 { sounds += "Pling" }
            if f == 5 { sounds += "Plang" }
            if f == 7 { sounds += "Plong" }
        }
    }
    
    // methods
    func getFactors(for n: Int) -> [Int] {
        // only care about factors up to 7
        return (1...7).filter { n % $0 == 0 }
    }
}

