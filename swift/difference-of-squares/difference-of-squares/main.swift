import Foundation

class Squares {
    // properties
    let number: Int
    var squareOfSums: Int {
        get {
            var result = 0
            for n in 1...number {
                result += n
            }
            return Int(pow(Double(result), 2.0))
//            return Int(pow(Double((1...number).reduce(0, +)), 2.0))
        }
    }
    var sumOfSquares: Int  {
        get {
            var result = 0
            for n in 1...number {
                result += Int(pow(Double(n), 2.0))
            }
            return result
            
//            return (1...number).reduce(0, { $0 + Int(pow(Double($1), 2.0)) })
        }
    }
    var differenceOfSquares: Int  {
        get {
            return squareOfSums - sumOfSquares
        }
    }
    
    // initializers
    init(_ n: Int) {
        number = n
    }
}
