import Foundation

struct Triangle {
    private enum Kind: String {
        case Equilateral, Isosceles, Scalene, ErrorKind
    }
    
    var kind = Kind.ErrorKind.rawValue
    
    init(_ x: Double, _ y: Double, _ z: Double) {
        guard (x > 0 && y > 0 && z > 0) && (x <= y + z && y <= x + z && z <= x + y) else { return }
        
        if x == y && y == z {
            kind = Kind.Equilateral.rawValue
        } else if x == y || x == z || y == z {
            kind = Kind.Isosceles.rawValue
        } else {
            kind = Kind.Scalene.rawValue
        }
    }
}
