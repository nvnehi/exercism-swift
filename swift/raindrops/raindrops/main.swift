// imports
import Foundation

// types
struct Raindrops {
    // properties
    var sounds: String = ""
    
    // initializers
    init(_ number: Int) {
        let factors = getFactors(for: number)
        var sounds: String = ""
        
        // iterate the list and build the appropriate string
        for f in factors {
            if f == 3 { sounds += "Pling" }
            if f == 5 { sounds += "Plang" }
            if f == 7 { sounds += "Plong" }
        }
        
        self.sounds = sounds == "" ? number.description : sounds
    }
    
    // methods
    func getFactors(for n: Int) -> [Int] {
        return (1...7).filter { n % $0 == 0 }
    }
}
