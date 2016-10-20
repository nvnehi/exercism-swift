// imports
import Foundation

// types
struct Clock: CustomStringConvertible, Equatable {
    /*
     properties
     */
    private let minutes: Int
    
    // CustomStringConvertible implementation
    let description: String
    
    // initializer
    init(hours: Int, minutes: Int = 0) {
        // modulus by one day(1440 minutes)
        let m = (hours * 60 + minutes) % 1440
        
        // if negative minutes, add 24 hours
        self.minutes = m < 0 ? m + 1440 : m
        description = String(format: "%.2i:%.2i", self.minutes / 60, self.minutes % 60)
    }
    
    /*
     methods
     */
    func add(minutes: Int) -> Clock {
        return Clock(hours: 0, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        return add(minutes: -minutes)
    }
    
    // Equatable implementation
    static func ==(lhs: Clock, rhs: Clock) -> Bool {
        return lhs.description == rhs.description
    }
}

