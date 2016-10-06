import Foundation

struct SumOfMultiples {
    // finds multiples of provided numbers up to a limit and return their sum
    static func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {
        var results: [Int] = []
        
        for m in multiples {
            guard m > 0 && m < limit else { continue }
            guard m != limit else {
                results.append(m)
                continue
            }

            let maxRange = Int(floor(Double(limit) / Double(m)))

            for n in 1...maxRange {
                let result = n * m

                if result >= limit { break }
                
                results.append(result)
            }
        }
        
        let unique = Array(Set(results))
        
        return unique.reduce(0, +)
    }
}
