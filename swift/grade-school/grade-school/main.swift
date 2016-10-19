// imports
import Foundation

// types
struct GradeSchool {
    // types
    typealias Roster = [Int: [String]]
    
    // properties
    var roster = Roster()
    var sortedRoster: Roster {
        var result = Roster()
        
        for (grade, students) in roster {
            result[grade] = students.sorted()
        }
        
        return result
    }
    
    // methods
    mutating func addStudent(_ name: String, grade: Int) {
        if roster[grade] != nil {
            roster[grade]!.append(name)
        } else {
            roster[grade] = [name]
        }
    }
    
    func studentsInGrade(_ grade: Int) -> [String]? {
        return roster[grade] ?? []
    }
}
