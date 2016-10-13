import Foundation

struct Hamming {
    static func compute(_ firstDNA: String, against secondDNA: String) -> Int? {
        guard firstDNA.characters.count == secondDNA.characters.count else { return nil }
        
        var difference: Int? = 0
        
        for i in 0..<firstDNA.characters.count {
            let idx = firstDNA.index(firstDNA.startIndex, offsetBy: i)
            
            if firstDNA[idx] != secondDNA[idx] { difference! += 1 }
        }
 
        return difference
    }
}
