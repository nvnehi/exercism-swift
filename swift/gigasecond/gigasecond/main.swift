import Foundation

class Gigasecond {
    let description: String
    
    init?(from: String) {
        let dateformatter = DateFormatter()
        
        dateformatter.timeZone = TimeZone(abbreviation: "UTC")
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        if let date = dateformatter.date(from: from) {
            let after = Date(timeInterval: 1_000_000_000, since: date)
            
            description = dateformatter.string(from: after)
        } else {
            return nil
        }
    }
}
