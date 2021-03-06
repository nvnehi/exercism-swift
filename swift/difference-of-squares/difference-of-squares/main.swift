import Foundation

struct Squares {
    // properties
    let number: Int
    var squareOfSums: Int {
        var result = 0
        for n in 1...number {
            result += n
        }
        return Int(pow(Double(result), 2.0))
    }
    var sumOfSquares: Int  {
        var result = 0
        for n in 1...number {
            result += Int(pow(Double(n), 2.0))
        }
        return result
    }
    var differenceOfSquares: Int  {
        return squareOfSums - sumOfSquares
    }
    
    // initializers
    init(_ n: Int) {
        number = n
    }
}
