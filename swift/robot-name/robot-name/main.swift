import Foundation

class Robot {
    private var _name: String?
    var name: String {
        if _name == nil {
            _name = "\(randChar())\(randChar())\(randNumber())\(randNumber())\(randNumber())"
        }
        
        return _name!
    }
    
    func resetName() {
        _name = nil
    }

    private func randChar() -> Character {
        return Character(UnicodeScalar(65 + arc4random_uniform(26))!)
    }
    
    private func randNumber() -> Int {
        return Int(arc4random_uniform(10))
    }
}
