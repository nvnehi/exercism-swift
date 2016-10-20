import Foundation

struct Clock: CustomStringConvertible, Equatable {
    let minutes: Int
    
    init(hours: Int, minutes: Int = 0) {
        let m = (hours * 60 + minutes) % 1440
        
        self.minutes = m < 0 ? m + 1440 : m
    }
    
    func add(minutes: Int) -> Clock {
        return Clock(hours: 0, minutes: self.minutes + minutes)
    }
    
    func subtract(minutes: Int) -> Clock {
        return add(minutes: -minutes)
    }
    
    var description: String {
        return String(format: "%.2i:%.2i", minutes / 60, minutes % 60)
    }
}

func ==(lhs: Clock, rhs: Clock) -> Bool {
    return lhs.description == rhs.description
}
